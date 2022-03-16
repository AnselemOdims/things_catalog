require 'json'
require_relative '../game'
require_relative '../author'

module HandleGames
  def create_author(game)
    puts "let\'s add an author for this game"
    puts 'Author first name'
    first_name = gets.chomp
    puts 'Author last name'
    last_name = gets.chomp
    author = Author.new(first_name, last_name)
    game.add_author(author)
  end

  def detect_last_played
    valid = false
    last_played = ''
    until valid
      puts 'When did you last play it?'
      last_played = gets.chomp
      valid = begin
        !Float(last_played).nil?
      rescue StandardError
        false && (last_played.to_i > 2)
      end
      last_played = '' unless valid
      puts 'please add a number of years since you last played' unless valid
    end
    last_played
  end

  def create_game
    puts 'Multiplayers name: '
    multiplayer = gets.chomp
    puts 'Publish Date: '
    publish_date = gets.chomp
    last_played = detect_last_played
    [multiplayer, last_played, publish_date]
  end

  def convert_to_json(game)
    File.write('games.json', '[]') unless File.exist?('games.json')
    games = JSON.parse(File.read('games.json'))
    games.push({ 'id' => game.id, 'multiplayer' => game.multiplayer, 'last_played' => game.last_played,
                 'publish_date' => game.publish_date,
                 'author' => { 'first_name' => game.author.first_name, 'last_name' => game.author.last_name } })
    File.write('games.json', JSON.generate(games))
  end

  def add_game
    multiplayer, last_played, publish_date = create_game
    game = Game.new(multiplayer, last_played, publish_date)
    create_author(game)
    convert_to_json(game)
    puts 'Game created successfully'
  end
end
