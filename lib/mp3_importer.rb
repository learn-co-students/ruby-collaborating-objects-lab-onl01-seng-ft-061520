require "pry"

class MP3Importer
    attr_reader :path
    def initialize(test_music_path)

        @path = test_music_path

    end

    def files
        # Google around for how to get a list of files in a directory!
        # expect(music_importer.files.size).to eq(4)
        # EXPLAIN: convert @path to a list of mp3 files ??
        # RESOURCE Video: https://www.youtube.com/watch?v=EbHgUA4Sgq4
        # RESOURCE Move all mp3 files: https://www.cyberciti.biz/tips/howto-linux-unix-find-move-all-mp3-file.html
        # step 1: in Pry type: ls self.path
# binding.pry

                        result = Dir.glob("#{@path}/*.mp3")
                        result.map do |file|
                            file.split("/").pop
                        end
 
                        # "./spec/fixtures/mp3s/Real Estate - It's Real - hip-hop.mp3".delete("./spec/fixtures/mp3s/")

                        ## RESOURCE: https://www.thoughtco.com/using-glob-with-directories-2907832
                        ## RESOURCE: https://apidock.com/ruby/Dir/glob/class
                        ## RESOURCE: https://www.youtube.com/watch?v=t4va-o5mcBs
    # Dir.glob('*.mp3').each do|file| puts file end
    # @path.glob('*.mp3').each do|file| puts file end
    # self.path.glob('*.mp3').each do|file| puts file end
    end

    def import
        files.each do |file|
            Song.new_by_filename(file)


            # mp3_deleted = file.split(/.mp3/).join(" ")
            # names_and_genre = mp3_deleted.split(/ - /)
            #     # artist_name = names_and_genre[0]
            #     song_name = names_and_genre[1]
            #     # genre = names_and_genre[2]
            #     Song.new_by_filename(song_name)

            
        end
    end



end

