require 'json'
require 'colorize'
require_relative './app'

module List
  def list_books
    File.write('books.json', '[]') unless File.exist? 'books.json'
    books = JSON.parse(File.read('books.json'))
    if books.empty?
      puts 'No books added yet, please add books'
    else
      puts '-----------------------------------------'
      books.each_with_index do |book, index|
        puts "#{index + 1}) ID:#{book['id']}, Publisher: #{book['publisher']},
                    Cover State: #{book['cover_state']}, Published Date: #{book['publish_date']}".colorize(:yellow)
      end
      puts '-----------------------------------------'
    end
  end

  def list_labels
    File.write('books.json', '[]') unless File.exist? 'books.json'
    books = JSON.parse(File.read('books.json'))
    if books.empty?
      'No labels added yet'
    else
      puts '-----------------------------------------'
      books.each_with_index do |book, index|
        puts "#{index + 1}) Title: #{book['label']['title']}, Color: #{book['label']['color']}"
      end
      puts '-----------------------------------------'
    end
  end

  def list_games
    File.write('games.json', '[]') unless File.exist? 'games.json'
    games = JSON.parse(File.read('games.json'))
    if games.empty?
      puts 'No games added yet, please add games'
    else
      puts '-----------------------------------------'
      games.each_with_index do |game, index|
        puts "#{index + 1}) ID:#{game['id']}, multiplayer: #{game['multiplayer']},
                    last played: #{game['last_played']}, Published Date: #{game['publish_date']}".colorize(:yellow)
      end
      puts '-----------------------------------------'
    end
  end

  def list_authors
    File.write('games.json', '[]') unless File.exist? 'games.json'
    games = JSON.parse(File.read('games.json'))
    if games.empty?
      'No authors added yet'
    else
      puts '-----------------------------------------'
      games.each_with_index do |game, index|
        puts "#{index + 1}) First name: #{game['author']['first_name']}, Last name: #{game['author']['last_name']}"
      end
      puts '-----------------------------------------'
    end
  end
end
