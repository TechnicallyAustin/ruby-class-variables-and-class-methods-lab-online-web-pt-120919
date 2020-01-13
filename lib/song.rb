require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  #class variables
  @@total_songs = [] 
  @@artists = []
  @@genres = []
  @@count = 0

def initialize(name,artist,genre)
  @name = name
  @genre = genre
  @artist = artist
  #shovel each artist and Genre into class variables
  @@artists << @artist
  @@genres << @genre
  @@total_songs << @name 
  @@count += 1
end
#class methods

def self.count
  @@total_songs.length 
end

def self.artists
end

def self.genres
end

def self.genres_count
end

def self.artist_count
end

end
#binding.pry