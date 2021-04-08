require 'open-uri'

class PagesController < ApplicationController
  def index

    my_key = "553ada5dbd7bc2b635e9495e52ec1f45"
    movie = 300
    response = open("https://api.themoviedb.org/3/movie/#{movie}?api_key=#{my_key}")
    @my_json = JSON.parse(response.read)
    @movie_title = @my_json.entries[9]
    raise
  end

  def display(movie)
  end
end
