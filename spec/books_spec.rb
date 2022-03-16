require 'date'
require_relative '../books'

describe 'Book' do
  before :each do
    @book = Book.new('John', 'good', '2001/02/03')
  end

  context 'when the book is created' do
    it 'should create a new Book' do
      expect(@book).to be_instance_of Book
    end

    it 'should be able to read the publisher' do
      expect(@book.publisher).to eq 'John'
    end

    it 'should be able to read the cover_state' do
      expect(@book.cover_state).to eq 'good'
    end

    it 'should be able to read the publish_date' do
      expect(@book.publish_date).to eq Date.parse('2001/02/03')
    end
  end

  context 'instance methods' do
    it 'should return true if published_date is older than 10 years' do
      expect(@book.can_be_archived?).to eq true
    end

    it 'should return true if published_date is older than 10 years' do
      @book = Book.new('John', 'bad', '2001/02/03')
      expect(@book.can_be_archived?).to eq true
    end

    it 'should return true if cover_state equals to "bad"' do
      @book = Book.new('John', 'bad', '2013/02/03')
      expect(@book.can_be_archived?).to eq true
    end

    it 'should return false if cover_state equals to "bad"' do
      @book = Book.new('John', 'good', '2013/02/03')
      expect(@book.can_be_archived?).to eq false
    end
  end
end
