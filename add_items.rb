require 'json'
require_relative './books'

class Add
  def self.add_book
    puts 'Publisher: '
    publisher = gets.chomp
    puts 'Cover State: '
    cover_state = gets.chomp
    puts 'Publish Date: '
    publish_date = gets.chomp
    book = Book.new(publisher, cover_state, publish_date)
    File.write('books.json', '[]') unless File.exist? 'books.json'
    books = JSON.parse(File.read('books.json'))
    books << { 'publisher' => book.publisher, 'cover_state' => book.cover_state, 'publish_date' => book.publish_date }
    File.write('books.json', JSON.generate(books))
    puts 'Book created successfully'
  end
end
