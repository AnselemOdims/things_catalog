require 'date'

class Item
  attr_reader :id, :genre, :author, :label

  def initialize(publish_date)
    @id = rand(1..1000)
    @publish_date = Date.parse(publish_date)
    @archived = false
  end

  def move_to_archive
    can_be_archived? && @archived = true
  end

  def add_genre(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def add_author(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  def add_label(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  private

  def can_be_archived?
    Time.now.year - @publish_date.year > 10
  end
end
