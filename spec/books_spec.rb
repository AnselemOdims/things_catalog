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

  context 'instance methods' do
    it 'should return true if published_date is older than 10 years' do
      expect(@book.can_be_archived?).to eq true
    end

    it 'should return true if published_date is older than 10 years' do
    @book = Book.new('John', 'bad', 20)
      expect(@book.can_be_archived?).to eq true
    end

    it 'should return true if cover_state equals to "bad"' do
      @book = Book.new('John', 'bad', 9)
        expect(@book.can_be_archived?).to eq true
    end

    it 'should return false if cover_state equals to "bad"' do
      @book = Book.new('John', 'good', 9)
        expect(@book.can_be_archived?).to eq false
    end
  end
end