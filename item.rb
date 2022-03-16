require 'date'

# class Item
class Item
  attr_accessor :genre, :author, :label, :publish_date
  attr_reader :id

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
    genre.items << self
  end

  def add_author(author)
    @author = author
    author.items << self
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
