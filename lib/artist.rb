require "pry"

class Artist

  attr_accessor :name, :genre, :song

  @@all = []

  def initialize(name)
    @name = name
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(self, name, genre)
  end

  def songs
    Songs.all.select do |song|
      song.artist == self
    end
  end


end
