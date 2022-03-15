require_relative './module/app'
# rubocop:disable Style/MixinUsage
def main
  include App
  list_of_options
  num = gets.chomp.to_i
  if num < 10
    options_choice(num)
  else
    exit
  end
end
# rubocop:enable Style/MixinUsage
welcome
main
