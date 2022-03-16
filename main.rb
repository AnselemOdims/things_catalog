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
    if num == 10
      exit
      break
    end
    options_choice(num)
  end
end
welcome
main
