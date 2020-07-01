class Song
  attr_accessor :name, :artist

  def artist_name=(artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
    @artist_name = artist_name
  end

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

  def self.new_by_filename(file)
    # binding.pry
    file_array = file.split(" - ")
    song = Song.new(file_array[1])
    # song.artist = file_array[0]
    song.artist = Artist.find_or_create_by_name(file_array[0]).add_song(song)
    song
    # binding.pry
  end

end
