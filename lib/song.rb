require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  #class variables
  @@total_songs = [] 
  @@artists = []
  @@genres = []
  @@unique_artist = []
  @@unique_genre = []
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
  @@unique_artist
end

def self.genres
  @@genres.delete_if?()
end

  



end