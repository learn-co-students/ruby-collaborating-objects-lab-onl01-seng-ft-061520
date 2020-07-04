def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
  
  
  #######################################################################
  
   def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end


  def self.find(name)
    @@all.find do |artist|
      artist.name == name
    end
  end

  def self.create(name)
    artist = self.new(name)
    @@all << artist
    artist
  end
  
  #########################################################################