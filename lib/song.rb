class Song 
  attr_accessor :artist, :title, :name
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
  
  def artist_name
    self.artist ? self.artist.name : nil
  end 
  
  def self.new_by_filename
    
  end 
end 