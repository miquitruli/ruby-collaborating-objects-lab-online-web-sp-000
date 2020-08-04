class Artist
  attr_accessor :name, :songs
  @@all=[]

  def initialize(name)
    @name=name
    @songs=[]
    @@all<<self
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist = @@all.find {|artist| artist.name == name}
    if artist==nil
      artist = Artist.new(name)
      artist.save
    end
    @@all.last
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each do |s|
      puts s.name
    end
  end
end
 ##add_song
    #takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
