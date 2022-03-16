require_relative '../item'
require_relative '../genre'
require_relative '../author'
require_relative '../label'

describe 'Item' do
  before :each do
    @item = Item.new('2001/02/03')
  end

  context 'when it is instantiated using the new keyword' do
    it 'should create a new Item object' do
      expect(@item).to be_instance_of Item
    end
  end

  context 'when the public methods are invoked' do
    it 'should return the genre items' do
      @genre = Genre.new('Comedy')
      @item.add_genre(@genre)
      expect(@item.genre).to eq @genre
      expect(@genre.items).to eq [@item]
    end

    it 'should return the author items' do
      @author = Author.new('John', 'Doe')
      @item.add_author(@author)
      expect(@item.author).to eq @author
      expect(@author.items).to eq [@item]
    end

    it 'should return the label items' do
      @label = Label.new('Angel & Demons', 'Red')
      @item.add_label(@label)
      expect(@item.label).to eq @label
      expect(@label.items).to eq [@item]
    end

    it 'should throw error when trying to access a private method' do
      expect { @item.can_be_archived? }.to raise_exception(NoMethodError)
    end
  end
end
