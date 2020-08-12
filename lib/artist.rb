require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  extend Memorable
  extend Findable
  include Paramable

  @@all = []

  def initialize
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
