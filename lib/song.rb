require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  #class variables
  @@total_songs = [] 
  @@artists = []
  @@genres = []
  @@unique_artist = []
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
  @@count
end

def self.artists
  if @@artists.include?(@artist) == true
    @@artists.pop(@artist)
  end
  @artist
  
end

def self.genres
  @@genres
end

def self.genres_count
  @@genres.length
end

def self.artist_count
  @@artists.length
end

end
#binding.pry