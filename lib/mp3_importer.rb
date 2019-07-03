class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    #Dir[@path+"/*.mp3"].map { |file| file.split("/").last }
    Dir.entries("#{@path}+/*.mp3").reject { |file| file == "." || file == ".."}
  end


  def import

  end


end
