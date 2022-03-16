require_relative '../genre'
require_relative '../item'

describe Genre do
  before :all do
    @genre = Genre.new('Jazz')
  end

  describe 'new genre created' do
    it 'should return an instance of Genre' do
      expect(@genre).to be_an_instance_of(Genre)
    end
  end

  describe 'testing genre name' do
    it 'should return Jazz genre name' do
      expect(@genre.name).to eq 'Jazz'
    end
  end

  describe 'adding items' do
    it 'genre adding items' do
      item = Item.new('2022-03-16')
      @genre.add_item(item)
      expect(@genre.items).to include(item)
    end
  end
end
