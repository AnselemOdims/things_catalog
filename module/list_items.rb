require 'json'
require 'colorize'
require_relative './app.rb'

module List
  def list_books
    File.write('books.json', '[]') unless File.exist? 'books.json'
    books = JSON.parse(File.read('books.json'))
    if books.empty?
      puts 'No books added yet, please add books'
    else
      books.each_with_index do |book, index|
        puts "#{index + 1}) ID:#{book['id']}, Publisher: #{book['publisher']},
                    Cover State: #{book['cover_state']}, Published Date: #{book['publish_date']}".colorize(:yellow)
      end
    end
  end

  def list_labels
    books = JSON.parse(File.read('books.json'))
    if books.empty?
      'No labels added yet'
    else
      books.each_with_index do |book, index|
        puts "#{index + 1}) Title: #{book['label']['title']}, Color: #{book['label']['color']}"
      end
    end
  end
end
