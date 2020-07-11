class MoviesController < ApplicationController
  PER = 18
  def index
    @movies = Movie.page(params[:page]).per(PER)
  end
end