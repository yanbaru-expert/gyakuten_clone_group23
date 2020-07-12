class MoviesController < ApplicationController
  
  def index
    @movies = Movie.page(params[:page]).per(18)
  end
end