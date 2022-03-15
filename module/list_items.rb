require 'json'
require 'colorize'

module List
  def list_books
    books = JSON.parse(File.read('books.json'))
    if books.empty?
      'No books added yet'
    else
      books.each_with_index do |book, index|
        puts "#{index + 1}) ID:#{book['id']}, Publisher: #{book['publisher']}, Cover State: #{book['cover_state']}, Published Date: #{book['publish_date']}".colorize(:yellow)
      end
    end
  end

  def list_labels
    books = JSON.parse(File.read('books.json'))
    if books.empty?
      'No labels added yet'
    else
      books.each_with_index do |book, index|
        puts "#{index+1}) Title: #{book['label']['title']}, Color: #{book['label']['color']}"
      end
    end
  end
end
