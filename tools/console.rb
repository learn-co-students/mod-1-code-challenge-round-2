require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

tryhard = Movie.new('try hard')
me = Viewer.new('me')
apple = Movie.new('apple')
brandon = Viewer.new('brandon')
xhanks = Movie.new('xhanks')
playlist_x = WatchListing.new(me, xhanks, 1)
me_playlist = WatchListing.new(me, tryhard, 5)
brandon_playlist_tryhard = WatchListing.new(brandon, tryhard, 15)
brandon_playlist_apple = WatchListing.new(brandon, apple, 3)
Pry.start
