class Artist 
  
  attr_accessor :name, :songs

  @@all = []
    
  def initialize(name)
    @name = name 
  end 
  
  def songs
    Artist.all.select do |song|
      artist.song == self
    end 
  end
  
  def self.all 
    @@all 
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def self.find_or_create_by_name
    singer = Song.new(song_name)
    add_song(singer)
  end 
  
end 