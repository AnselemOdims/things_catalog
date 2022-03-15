require_relative 'item'

class Author
  attr_reader :items

  def initialize(first_name, last_name)
    @id = rand(1..1000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @itmes << item
    item.add_author(self)
  end
end
