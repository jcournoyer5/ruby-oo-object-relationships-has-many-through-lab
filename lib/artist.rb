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

def songs
    Song.all.select {|song| song.artist == self}
end

def new_song(name, genre)
    Song.new(name, self, genre)
    #song.artist = self
end

def genres
    songs.map(&:genre)
   # Genre.all.select {|genre| genre.artist == self}
   
end    



end
