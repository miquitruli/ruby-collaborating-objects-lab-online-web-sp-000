class MP3Importer
 attr_accessor :path

 def initialize(path)
  @path = path
 end

 def files
  Dir.chdir(@path)
  filename = Dir.glob("*.mp3")
  filename
 end
end
