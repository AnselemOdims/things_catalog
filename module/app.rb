require 'colorize'
require_relative './add_books'
require_relative './list_items'

module App
  include HandleBooks
  include List

  def list_of_options
    puts ['Please choose an option by entering a number: '.colorize(:green),
          '1: List all books 📖'.colorize(:light_blue),
          '2: List all music albums 🎶'.colorize(:light_blue),
          '3: List all games 🎯'.colorize(:light_blue),
          '4: List all genres 🔠 (e.g \'Comedy\', \'Thriller\')'.colorize(:light_blue),
          '5: List all labels 🏷 (e.g. \'Gift\', \'New\')'.colorize(:light_blue),
          '6: List all authors ✍ (e.g. \'Stephen King\')'.colorize(:light_blue),
          '7: Add a book 📖'.colorize(:light_green),
          '8: Add a music album 🎤'.colorize(:light_green),
          '9: Add a game 🎮'.colorize(:light_green),
          '10: Exit and save 👋'.colorize(:red)]
  end

  def exit
    puts 'Thank you for using our App. Bye for now 👋'.colorize(:red)
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def options_choice(num)
    case num
    when 1
      list_books
    when 2
      puts 'Method to list all music albums'
    when 3
      puts 'Method to list all games'
    when 4
      puts 'Method to list all genres'
    when 5
      list_labels
    when 6
      puts 'Method to list all author'
    when 7
      add_book
    when 8
      puts 'Method to add a music album'
    when 9
      puts 'Method to add a game'
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end
