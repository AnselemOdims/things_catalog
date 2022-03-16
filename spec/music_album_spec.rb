require_relative '../music_album'

describe MusicAlbum do
  before :each do
    @music_album = MusicAlbum.new('2022-03-16', true)
  end

  describe 'new music album created' do
    it 'should return an instance of MusicAlbum' do
      expect(@music_album).to be_an_instance_of(MusicAlbum)
    end
  end

  describe 'archiving method' do
    it 'should return true if parents method returns true and if on_spotify equals true' do
      @music_album = MusicAlbum.new('2002-03-16', true)
      expect(@music_album.can_be_archived?).to be true
    end
  end

  describe 'archiving method' do
    it 'should return false if parents method returns true and if on_spotify equals false' do
      @music_album = MusicAlbum.new('2022-03-16', false)
      expect(@music_album.can_be_archived?).to be false
    end
  end
end
