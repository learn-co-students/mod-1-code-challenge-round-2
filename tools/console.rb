require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

movie1 = Movie.new("hello")
movie2 = Movie.new("legally blonde")

alona = Viewer.new("alona")




Pry.start
