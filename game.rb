require_relative 'item'

class Game < Item
  def initialize(multiplayer, last_played, publish_date)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played = last_played
  end
  
end
