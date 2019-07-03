class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).reject { |file| file == "." || file == ".."}
  end


  def import
    
  end


end
