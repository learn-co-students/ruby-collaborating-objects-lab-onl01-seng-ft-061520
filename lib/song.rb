require "pry"

class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file)
        mp3_deleted = file.split(/.mp3/).join(" ")
        names_and_genre = mp3_deleted.split(/ - /)
            artist_name = names_and_genre[0]
            song_name = names_and_genre[1]
            # genre = names_and_genre[2]

        new_song = self.new(song_name)
        new_song.artist = Artist.find_or_create_by_name(artist_name)
        new_song
    end

    def artist_name=(artist_name)
        # finds or creates an Artist instance and assigns it to the Song's artist attribute
        self.artist = Artist.find_or_create_by_name(artist_name)       
    end
    



end
