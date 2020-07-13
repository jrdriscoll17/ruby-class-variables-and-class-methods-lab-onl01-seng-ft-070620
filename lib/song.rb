class Song
  @@count = 0
  @@genres = []
  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.genres
    genres_no_repeats = []
    @@genres.each do |genre|
      if !genres_no_repeats.include?(genre)
        genres_no_repeats << genre
      end
    genres_no_repeats
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
  end
end
