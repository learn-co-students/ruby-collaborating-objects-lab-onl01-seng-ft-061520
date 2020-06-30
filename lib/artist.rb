class Artist 
  
  attr_accessor :name

  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def add_song(song)
    song.artist = self
  end 
  
  def songs
    Song.all.select{|song| song.artist == self}
  end
 
  def self.find_artist(artist_name)
    self.all.find{|artist| artist.name == artist_name}
  end 
    
  # def self.find_or_create_by_name
  # end 
    
  def print_songs
    songs.map{|song| puts song.name}
  end
  
end 