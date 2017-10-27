class Viewer
  attr_accessor :username, :movie

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def add_to_watchlist(movies)
    #this method should receive an array
    #of one or more movie instances and
    #add them to the viewer's watchlisting
    movies.map do |movie|
      WatchListing.new(movie, self)
    end
  end

  def movies  #returns the movies for this inst. of viwer
    watchlists= WatchListing.all.select {|watchlist| watchlist.viewer == self} #returning an array of watchlist for this viewer
    watchlists.map {|watchlist| watchlist.movie}
  end

end
