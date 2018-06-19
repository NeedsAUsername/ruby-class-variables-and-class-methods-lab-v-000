class Song
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
        @@artist_counter.include?(artist) ? @@artist_counter[artist] += 1 : @@artist[artist] = 1
    end

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_counter = {}
    @@artist_counter = {}

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genre_counter
    end

    def self.artist_count
        @@artist_counter
    end


end
