class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).reject { |file| file == "." || file == ".."}
  end


  def import
    self.files.eachs { |file| Song.new_by_filename(file)}
  end

end
