# File: lib/music_library.rb

class MusicLibrary
    def initialize
      @pl = {}
    end
  
    def add(track) # track is an instance of Track
      @pl.store(track.artist, track.title)
      return @pl[track.artist]
    end
  
    def all
      @pl.map { |k, v| "#{k}: #{v}" }.join(", ")
    end
    
    def search(keyword) # keyword is a string
      @pl.map { |k, v| k == keyword ? v : nil  }.join
    end
  end