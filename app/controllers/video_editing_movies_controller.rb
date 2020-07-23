class VideoEditingMoviesController < ApplicationController
  def index
    @video_editing_movies = VideoEditingMovie.all
  end
end
