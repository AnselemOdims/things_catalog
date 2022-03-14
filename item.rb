class Item
  def initialize(genre, author, source, label, publish_date)
    @id = rand(1..1000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = false
  end

  def move_to_archive
    can_be_archived? ? @archived = true : @archived = false
  end

  private
  def can_be_archived?
    @publish_date > 10 
  end
end
