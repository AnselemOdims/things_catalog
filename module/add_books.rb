require 'json'
require_relative '../books'
require_relative '../label'

module HandleBooks
  def include_label(book)
    puts 'Title: '
    title = gets.chomp
    puts 'Color: '
    color = gets.chomp
    label = Label.new(title, color)
    book.add_label(label)
  end

  def include_cover
    valid = false
    cover_state = ''
    until valid
      print 'Cover state[good/bad]: '
      cover_state = gets.chomp
      valid = %w[good bad].include?(cover_state)
      cover_state = '' unless valid
      puts 'Please insert good or bad as the cover state' unless valid
    end
    cover_state
  end

  def create_book
    puts 'Publisher\'s name: '
    publisher = gets.chomp
    cover_state = include_cover
    puts 'Publish Date: '
    publish_date = gets.chomp
    [publisher, cover_state, publish_date]
  end

  def add_to_json(book)
    File.write('books.json', '[]') unless File.exist? 'books.json'
    books = JSON.parse(File.read('books.json'))
    books << { 'id' => book.id, 'publisher' => book.publisher, 'cover_state' => book.cover_state, 'publish_date' => book.publish_date,  'label' => { 'title' => book.label.title, 'color' => book.label.color}}
    File.write('books.json', JSON.generate(books))
  end

  def add_book
    publisher, cover_state, publish_date = create_book
    book = Book.new(publisher, cover_state, publish_date)
    include_label(book)
    add_to_json(book)
    puts 'Book created successfully'
  end
end
