require_relative '../music_album'

describe MusicAlbum do
  context 'Initialize MusicAlbum Older Release Date True Spotify' do
    music_album1 = MusicAlbum.new(10, 'Kevin', 'Rock', '2020-03-16', true)
    it 'Should return Class MusicAlbum' do
      expect(music_album1).to be_an_instance_of MusicAlbum
    end
    it 'Should Return True' do
      expect(music_album1.can_archived?).to be true
    end
  end

  context 'Initialize MusicAlbum Older Release Date False Spotify' do
    music_album2 = MusicAlbum.new(10, 'Kevin', 'Rock', '2020-03-16', false)
    it 'Should return Class MusicAlbum' do
      expect(music_album2).to be_an_instance_of MusicAlbum
    end
    it 'Should Return False' do
      expect(music_album2.can_archived?).to be false
    end
  end

  context 'Initialize MusicAlbum Newer Release Date True Spotify' do
    music_album3 = MusicAlbum.new(10, 'Kevin', 'Rock', '2022-03-16', true)
    it 'Should return Class MusicAlbum' do
      expect(music_album3).to be_an_instance_of MusicAlbum
    end
    it 'Should Return False' do
      expect(music_album3.can_archived?).to be false
    end
  end

  context 'Initialize MusicAlbum Newer Release Date False Spotify' do
    music_album4 = MusicAlbum.new(10, 'Kevin', 'Rock', '2022-03-16', false)
    it 'Should return Class MusicAlbum' do
      expect(music_album4).to be_an_instance_of MusicAlbum
    end
    it 'Should Return False' do
      expect(music_album4.can_archived?).to be false
    end
  end
end