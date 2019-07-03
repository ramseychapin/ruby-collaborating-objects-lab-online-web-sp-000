class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)

  end


end
