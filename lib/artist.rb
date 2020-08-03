class Artist
  attr_accessor :name

  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
  end

  def add_song
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|s|s.artist==self}
  end
end
