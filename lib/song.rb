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
  unless @@total_songs.include?(@name) do 
  @@total_songs << @name 
  end
  @@count += 1
end
#class methods

def self.count
  @@count

def self.artists
  @@artists
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