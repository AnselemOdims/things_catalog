def welcome
  puts '------------------------------
  *** Welcome to the thingsCatalog App ***
   -------------------------------------'
end

def list_of_options
  puts ['1: List all books 📖',
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

def options_choice(num)
  case num
  when '1'
    puts 'Method to list a book'
  when '2'
    puts 'Method to list all music albums'
  when '3'
    puts 'Method to list all games'
  when '4'
    puts 'Method to list all genres'
  when '5'
    puts 'Method to list all labels'
  when '6'
    puts 'Method to list all author'
  when '7'
    puts 'Method to add a book'
  when '8'
    puts 'Method to add a music album'
  when '9'
    puts 'Method to add a game'
  end
end

def main; end
