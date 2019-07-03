class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song_split = file.chomp(".mp3").split(" - ")
    self.Song.new(song_split[1])
    self.artist_name = song_split[0]

  end


  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


end
