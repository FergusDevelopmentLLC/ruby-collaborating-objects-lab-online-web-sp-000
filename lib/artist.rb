class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs

    #Song.all.select {|song| song.artist.nil? == false && song.artist.name == self.name}
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

<<<<<<< HEAD
  def self.find_or_create_by_name(name)
    matching_artists = self.all.select {|artist| artist.name == name}
    if (matching_artists.length == 0)
      Artist.new(name)
    else
      matching_artists[0]
    end
  end

  def print_songs
    self.songs.each do |song| song
      puts song.name
    end
  end

=======
>>>>>>> 7710b1e56e1b0991866475d687efb958dbca05f4
end
