class Artist
  attr_accessor :name, :songs
  @@artists = []

  def initialize(name)
    @@artists << self
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end

  def song_count
    @@artists.map{|artist| artist.songs}.flatten.size
  end

end
