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

  def self.find_by_artist(artist)
    Song.all.select {|song|song.artist == artist}
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(file)
    artist, song = file.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
  #  binding.pry
    new_song.save
  end

  def save
    @@all << self
    @self
  end

end
