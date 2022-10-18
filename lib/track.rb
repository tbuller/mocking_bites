# File: lib/track.rb

class FakeTrack
    def initialize(title, artist)
      @title = title
      @artist = artist # title and artist are both strings
    end

    def title
      return @title
    end
    
    def artist
      return @artist
    end  
  
    def matches?(keyword) # keyword is a string
      keyword == @title || keyword == @artist
    end
  end