class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end 
  
  def files 
    spec/fixtures/mp3s
  end 
end 