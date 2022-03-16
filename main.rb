require_relative './module/app'

def welcome
  puts '------------------------------
*** Welcome to the thingsCatalog App ***
 -------------------------------------'.colorize(:yellow)
end

def main
  include App
  loop do
    list_of_options
    num = gets.chomp.to_i
    return exit if num == 10

    options_choice(num)
  end
end
welcome
main
