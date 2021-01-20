class Genre
    
    attr_accessor :name
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def songs
        Song.all {|song| song.artist == self}
        # Song.all.select {|song| song.artist == self}
    end
    
    def self.all
        @@all
    end
    
    def artists
        #has many artists through songs
        Artist.all {|artist| artist.genre == self}
        # Artist.all.select {|artist| artist.genre == self}
    end
    
    
end    

