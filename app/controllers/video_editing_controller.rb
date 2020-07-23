class VideoEditingMoviesController < ApplicationController
  def index
    @ve_movies = Ve_movie.all
  end
end
