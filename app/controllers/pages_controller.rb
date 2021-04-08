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
    response = open("https://api.themoviedb.org/3/search/movie?api_key=#{my_key}&query=#{movie}&page=1&include_adult=false")
    @my_json = JSON.parse(response.read)
    my_poster = @my_json.entries[1][1][1]["poster_path"]

    @movie_title = @my_json.entries[1][1][1]["original_title"]
    @movie_overview = @my_json.entries[1][1][1]["overview"]
    @movie_rating = @my_json.entries[1][1][1]["vote_average"]
    @movie_release = @my_json.entries[1][1][1]["release_date"]


    @my_link = "https://image.tmdb.org/t/p/w500/#{my_poster}"
    # @movie_title = @my_json.entries[9]

    # https://api.themoviedb.org/3/search/movie?api_key=#{my_key}&query=#{movie}

    # responseMatrix = open("https://api.themoviedb.org/3/movie/603?api_key=553ada5dbd7bc2b635e9495e52ec1f45")
    # @my_Matrix = JSON.parse(responseMatrix.read)
  end
end
