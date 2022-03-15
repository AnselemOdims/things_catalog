require 'json'
require_relative './books'
require_relative './label'

class Add
  def self.add_book
    puts 'Publisher: '
    publisher = gets.chomp
    puts 'Cover State: '
    cover_state = gets.chomp
    puts 'Publish Date: '
    publish_date = gets.chomp
    book = Book.new(publisher, cover_state, publish_date)
    include_label(book)
    File.write('books.json', '[]') unless File.exist? 'books.json'
    books = JSON.parse(File.read('books.json'))
    books << { 'id' => book.id, 'publisher' => book.publisher, 'cover_state' => book.cover_state, 'publish_date' => book.publish_date }
    File.write('books.json', JSON.generate(books))
    puts 'Book created successfully'
  end

  def self.include_label(book)
    puts 'Title: '
    title = gets.chomp
    puts 'Color: '
    color = gets.chomp
    label = Label.new(title, color)
    book.add_label(label)
    p label.items
  end
end

Add.add_book