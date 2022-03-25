class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
 

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    # return the count of songs
    @@count
  end

  def self.genres
    # remove duplicates
    @@genres.uniq
  end

  def self.artists
    # remove duplicates
    @@artists.uniq
  end

  def self.genre_count
    genre_count = {}
    # keys(genre) => value(count of songs that have the genre)
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
        # looking at each genre in @@genres hash.  For every match of a genre, we increment the count of that particular genre in genre_count.  
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

end