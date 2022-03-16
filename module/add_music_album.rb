require 'json'
require_relative '../music_album'
require_relative '../genre.rb'

module HandleMusicAlbum

  $albums = load_albums
  $genres = load_genres

  def load_albums
    if File.exist?('album.json')
      JSON.parse(File.read('album.json')).map do |album|
        MusicAlbum.new(album['publish_date'], album['on_spotify'])
      end
    else
      []
    end
  end
    
  def load_genres
    if File.exist?('genre.json')
      JSON.parse(File.read('genre.json')).map do |genre|
        Genre.new(genre['id'], genre['name'])
      end
    else
      []
    end
  end
    
  def save_album
    album_data = []
    $albums.each do |album|
       album_data.push({ id: album.id, name: album.name, genre: album.genre, label: album.label,
                        publish_date: album.publish_date, on_spotify: album.on_spotify })
    end
    open('album.json', 'w') { |f| f << JSON.generate(album_data) }
  end
    
  def save_genre
    genre_data = []
    $genres.each do |genre|
      genre_data.push({ id: genre.id, name: genre.name })
    end
    open('genre.json', 'w') { |f| f << JSON.generate(genre_data) }
  end

  def add_genre(genre)
    id = Random.rand(1..1000)
    genre_array = []
    $genres.each { |type| genre_array << type.name }
    new_genre = Genre.new(name)
    $genres << new_genre unless genre_array.include?(genre)
  end

  def add_music_album
    id = Random.rand(1..1000)
    print 'Name: '
    name = gets.chomp
    print 'Genre: '
    genre = gets.chomp
    print 'Publish Date: '
    date = gets.chomp
    print 'On Spotify Y/N:'
    on_spotify = gets.chomp.downcase
    case on_spotify
    when 'y'
      true
    else
      false
    end
    new_music_album = MusicAlbum.new(publish_date, on_spotify)
    $albums << new_music_album
    add_genre(genre)
  end
end
