class Artist
  attr_accessor :name, :songs
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    soug_count += 1
  end

  def add_song_by_name(title)
    song = Song.new(title)
    add_song(song)
  end

  def self.song_count
    @@song_count
  end

end
