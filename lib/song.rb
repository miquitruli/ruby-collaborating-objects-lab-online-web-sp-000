class Song
  attr_accessor :name, :artist
  @@all=[]

  def initialize(name)
    @name=name
  end

  def self.new_by_filename(file_name)
    s = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    new_s = self.new(s)
    new_s.artist_name = artist
    new_s
  end

end
