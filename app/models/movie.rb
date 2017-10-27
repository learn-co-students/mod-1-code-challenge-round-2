class Movie
  attr_accessor :title, :viewer

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self

  end

  def self.all
    @@all
  end

  def watchlistings
    #returns an array of all the watchlist objects that
    #contain that movie

    WatchListing.all.select {|watchlist| watchlist.movie == self}
  end

  def viewers
    # returns all of the viewers who added this movie to
    #their watchlist
    WatchListing.all.select {|watchlist| watchlist.viewer ==self}
  end

end
