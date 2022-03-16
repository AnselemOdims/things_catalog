require_relative './item'
class Label
  attr_reader :items, :title, :color

  def initialize(title, color)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    item.add_label(self)
  end
end
