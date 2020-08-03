class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    s = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    new_s = self.new(s)
    new_s.artist_name = artist
    new_s
  end

end
