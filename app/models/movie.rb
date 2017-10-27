class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def watchlistings
    WatchListing.all.select{|watchlist| watchlist.movie == self}
  end

  def viewers
    self.watchlistings.map {|list| list.viewer}
  end

  def average_rating
    self.watchlistings.inject(0){|sum_rating, watchlist| sum_rating + watchlist.rating} / self.viewers.size
  end

  def self.highest_rated
    #WatchListing.all.
  end
end
