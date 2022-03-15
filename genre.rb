class Genre
  attr_accessor :items

  def initialize(name)
    @id = rand(1..1000)
    @name = name
    @items = items[]
  end

  def add_item(item)
    @items << item
    item.add_genre(self)
  end
end
