class Artist
  attr_accessor :name, :songs

  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
  end

  def add_song(song)
    @songs<<song
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|s|s.artist==self}
  end

  def self.find_or_create_by_name(artist_name)
    found_artist = self.all.find {|artist| artist.name == artist_name}
    if found_artist
      found_artist
    else
      new_artist = self.new(artist_name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    @songs.each do |s|
      puts s.name
    end
  end
end
 ##add_song
    #takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
