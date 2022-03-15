require 'colorize'
require_relative './module/add_books'
require_relative './module/list_items'

def welcome
  puts '------------------------------
  *** Welcome to the thingsCatalog App ***
   -------------------------------------'.colorize(:yellow)
end

def list_of_options
  puts ['Please choose an option by entering a number: '.colorize(:green),
        '1: List all books 📖',
        '2: List all music albums 🎶',
        '3: List all games 🎯',
        '4: List all genres 🔠 (e.g \'Comedy\', \'Thriller\')',
        '5: List all labels 🏷 (e.g. \'Gift\', \'New\')',
        '6: List all authors ✍ (e.g. \'Stephen King\')',
        '7: Add a book 📖',
        '8: Add a music album 🎤',
        '9: Add a game 🎮',
        '10: Exit and save 👋']
end

def exit
  puts 'Thank you for using our App. Bye for now 👋'.colorize(:red)
end

def options_choice(num)
  include HandleBooks
  include List
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

def main
  list_of_options
  num = gets.chomp.to_i
  if num < 10
    options_choice(num)
  else
    exit
  end
end

welcome
main
