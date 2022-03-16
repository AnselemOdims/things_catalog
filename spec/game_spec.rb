require_relative '../classes/game'

describe Game do
  before :all do
    @game = Game.new('ahmed', 1, '2015/02/03')
  end

  describe 'new game created' do
    it 'should return an instance of Game' do
      expect(@game).to be_an_instance_of(Game)
    end
  end

  describe 'archiving method' do
    it 'should return true if last played is older than 2 years and publish date is more than 10 years' do
      expect(@game.can_be_archived?).to be false
    end
  end

  describe 'archiving method' do
    it 'should return true if published_date is older than 10 years and last played is older than 2 years' do
      @game = Game.new('kevin', 3, '2001/02/03')
      expect(@game.can_be_archived?).to be true
    end
  end
end
