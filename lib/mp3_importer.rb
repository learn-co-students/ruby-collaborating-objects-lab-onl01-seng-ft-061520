class MP3Importer
  #test_music_path = "./spec/fixtures/mp3s"
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files 
    files = []
  Dir.new(self.path).each do |file|
    files << file if file.length > 4
  end 
  files 
  end 
  
  def import 
    self.files.each do |file|
      Song.new_by_filename(file)
    end 
  end 
  
end 

