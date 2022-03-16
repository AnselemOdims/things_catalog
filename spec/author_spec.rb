require_relative '../classes/author'
require_relative '../classes/item'

describe Author do
  before :all do
    @author = Author.new('ahmed', 'reda')
  end

  describe 'new Author created' do
    it 'should return an instance of Author' do
      expect(@author).to be_an_instance_of(Author)
    end
  end

  describe 'testing first name' do
    it 'should return author first name correctly' do
      expect(@author.first_name).to eq 'ahmed'
    end
  end

  describe 'testing last name' do
    it 'should return author last name correctly' do
      expect(@author.last_name).to eq 'reda'
    end
  end

  describe 'adding itmes' do
    it 'author adding items' do
      item = Item.new('2001/02/03')
      @author.add_item(item)
      expect(@author.items).to include(item)
    end
  end
end
