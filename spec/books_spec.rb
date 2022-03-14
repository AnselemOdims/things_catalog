require_relative '../books'

describe 'Book' do
  before :each do
    @book = Book.new('John', 'good', 20)
  end

  context 'when the book is created' do
    it 'should create a new Book' do
      expect(@book).to be_instance_of Book
    end
  end
end