class Song 
  
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  # def self.new_by_filename
    
  # end
  
  def artist_name
    self.artist = Artist.find_or_create_by_name(name)
  end 
  
end 