require 'json'

class List
  def list_books
    books = JSON.parse(File.read('books.json'))
    if books.empty?
      'No books added yet'
    else
      books.each_with_index do |book, index|
        puts "#{index + 1})Publisher: #{book['publisher']}, Cover State: #{book['cover_state']}, Published Date: #{book['publish_date']}"
      end
    end
  end
end
