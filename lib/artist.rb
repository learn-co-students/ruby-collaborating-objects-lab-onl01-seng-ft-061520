class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(artist_name)
    if self.all.find{|artist| artist.name == artist_name}
      return self.all.find{|artist| artist.name == artist_name}
    else
      artist_name = self.new(artist_name)
      artist_name
    end
  end
  
  def print_songs
    self.songs.each {|song| puts "#{song.name}"}
  end
end