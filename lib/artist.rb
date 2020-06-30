require 'pry'
class Artist 
  attr_accessor :name, :songs   
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @songs = [] 
  end 
  
  def self.all 
    @@all 
  end 
  
  def add_song(song)
     song.artist = self 
     @songs << song 
  end 
  
  def songs 
     #returns array of all songs belonging to this artist instance; shoudl get all existing song instances from Song and select the ones associated wit this artist 
     Song.all.select do |check_artist|
        check_artist.artist == self  ##implicitly returns what we are looking for! :D 
     end 
  end 
  
  def self.find_or_create_by_name(artist_name_string) 
    #take name passed in (string) and 1. find artist instance that has that name or create one if doesn't exist ; return value of method will be an instance of an artist 
   # binding.pry
    if self.find(artist_name_string)  
      self.find(artist_name_string)
    else 
     self.create(artist_name_string)
    end 
  end

  def self.find(name)
    @@all.find do |artist|
      artist.name == name
    end 
  end 
  
  def self.create(name)
    artist = self.new(name)
    artist
  end 
  
  def print_songs
    #outputs names of all songs by artist 
    puts @songs.collect {|x| x.name} 
  end 
end 