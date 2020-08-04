class Song
  attr_accessor :name, :artist
  @@all =[]

  def self.all
    @@all
  end

  def initialize(name)
    @name=name
    @@all << self
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end

  def self.new_by_filename(song)
    split_file = file.split(" - ")
    song = self.new(split_file[1])
    song.artist = Artist.find_or_create_by_name(split_file[0])
    song
  end

end
