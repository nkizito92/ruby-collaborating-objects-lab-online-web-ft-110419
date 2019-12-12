require "pry"
class Song 
  attr_accessor :artist, :name
    @@all = []
  def initialize(name) 
    @name = name
    save
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  # creates and adds the artist name 
  def artist_name=(artist_n)
    artist = Artist.find_or_create_by_name(artist_n)
    artist.add_song(self)
  end 
  
  # creates a new instance of a song from the file that's passed
  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    n_song = self.new(song)
    n_song.artist_name = artist
    n_song
  end 
end 