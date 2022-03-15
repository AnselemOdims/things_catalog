require 'json'
require 'colorize'
require_relative './app'

module List
  def list_books
    File.write('books.json', '[]') unless File.exist? 'books.json'
    books = JSON.parse(File.read('books.json'))
    if books.empty?
      puts 'No books added yet, please add books'
    else
      puts '-----------------------------------------'
      books.each_with_index do |book, index|
        puts "#{index + 1}) ID:#{book['id']}, Publisher: #{book['publisher']},
                    Cover State: #{book['cover_state']}, Published Date: #{book['publish_date']}".colorize(:yellow)
      end
      puts '-----------------------------------------'
    end
  end

  def list_labels
    File.write('books.json', '[]') unless File.exist? 'books.json'
    books = JSON.parse(File.read('books.json'))
    if books.empty?
      'No labels added yet'
    else
      puts '-----------------------------------------'
      books.each_with_index do |book, index|
        puts "#{index + 1}) Title: #{book['label']['title']}, Color: #{book['label']['color']}"
      end
      puts '-----------------------------------------'
    end
  end
end
