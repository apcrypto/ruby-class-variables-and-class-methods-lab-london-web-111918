require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count +=1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end


  def self.genre_count
     @@genres.each_with_object(Hash.new(0)) do |key, hash|
       hash[key] += 1
     end
   end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
      @@artists.each_with_object(Hash.new(0)) do |key, hash|
        hash[key] += 1
      end
  end

end
