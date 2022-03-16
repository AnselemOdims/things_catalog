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
      books.each_with_index do |book, index|
        puts "#{index + 1}) ID:#{book['id']}, Publisher: #{book['publisher']},
                    Cover State: #{book['cover_state']}, Published Date: #{book['publish_date']}".colorize(:yellow)
      end
    end
  end

  def list_labels
    File.write('books.json', '[]') unless File.exist? 'books.json'
    books = JSON.parse(File.read('books.json'))
    if books.empty?
      'No labels added yet'
    else
      books.each_with_index do |book, index|
        puts "#{index + 1}) Title: #{book['label']['title']}, Color: #{book['label']['color']}"
      end
    end
  end

  def list_albums
    File.write('album.json', '[]') unless File.exist? 'album.json'
    albums = JSON.parse(File.read('album.json'))
    if albums.empty?
      puts 'No albums added yet, please add albums'
    else
      albums.each_with_index do |album, index|
        puts "#{index + 1}) ID:#{album['id']}, publish date: #{album['publish_date']},
        on spotify: #{album['on_spotify']}, genre: #{album['genre']}".colorize(:yellow)
      end
    end
  end

  def list_genres
    File.write('album.json', '[]') unless File.exist? 'album.json'
    albums = JSON.parse(File.read('album.json'))
    if albums.empty?
      'No genres added yet'
    else
      albums.each_with_index do |album, index|
        puts "#{index + 1}) Genre name: #{album['genre']}"
      end
    end
  end
end
