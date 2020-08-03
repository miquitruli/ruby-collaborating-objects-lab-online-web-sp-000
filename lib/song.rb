class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    s = file.split(" - ")[1]
    artist_name = file.split(" - ")[0]
    new_s = self.new(s)
    new_s.artist_name = artist
    new_s
  end

end
