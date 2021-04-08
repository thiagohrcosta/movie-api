require 'open-uri'

class PagesController < ApplicationController
  def index
    #raise
  end

  def display
    @answer = params[:title]
    my_key = "553ada5dbd7bc2b635e9495e52ec1f45"
    movie = @answer
    # raise

    # movie must be a number
    response = open("https://api.themoviedb.org/3/search/movie?api_key=#{my_key}&query=#{movie}")
    @my_json = JSON.parse(response.read)
    # @movie_title = @my_json.entries[9]
    raise

    # https://api.themoviedb.org/3/search/movie?api_key=#{my_key}&query=#{movie}
  end
end
