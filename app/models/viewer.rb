class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def watchlistings
    WatchListing.all.select{|list| list.viewer == self}
  end
  def add_to_watchlist movies
      movies.each{|movie| WatchListing.new(self, movie)}
  end

  def rate_movie movie, rating
    WatchListing.all.delete_if{|list| list.movie == movie && list.viewer == self}
    WatchListing.new(self, movie, rating)
  end
end
