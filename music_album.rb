require_relative 'item'

class MusicAlbum < Item
  def initialize(publish_date, on_spotify)
    super(publish_date)
    @on_spotify = on_spotify
  end

  def can_archived?
    super && @on_spotify
  end
end
