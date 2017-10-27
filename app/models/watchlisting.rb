class WatchListing
  attr_accessor :movie, :viewer

  @@all = []

  def initialize(movie, viewer)
    @viewer = viewer
    @movie = movie
    @@all << self
  end

  def self.all
    @@all
  end

  def viewer
    #returns the viewer associated with this watchlisting
    WatchListing.all.select{|watchlisting| watchlisting.viewer}
  end

  def movie
    # returns the movie associated with this watchlisting
    Watchlisting.all.find {|watchlisting| watchlisting.movie == self}
  end



end
