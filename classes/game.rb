require_relative 'item'

class Game < Item
  attr_accessor :multiplayer, :last_played, :publish_date

  def initialize(multiplayer, last_played, publish_date)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played = last_played
  end

  def can_be_archived?
    super && @last_played > 2
  end
end
