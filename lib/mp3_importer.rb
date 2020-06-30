require 'pry'
class MP3Importer
  attr_accessor :path
  @files = []

  def initialize(path)
    @path = path
    save
  end

  def save
    @files = Dir.glob("*.mp3", base: "#{path}")

    #binding.pry
  end
  
  def files
    @files
  end

  def import
    files.each do |file| 
      Song.new_by_filename(file)
    end
  end
end