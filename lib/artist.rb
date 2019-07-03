class Artist

  attr_reader :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == name
        artist
      else
        new_artist = self.new(name)
        new_artist
      end
    end
  end


  def self.find(name)
    self.all.detect { |artist| artist.name ==name}
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def print_songs
    self.songs.each { |song| puts song.name}
  end
end
