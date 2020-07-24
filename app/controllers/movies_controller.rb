class MoviesController < ApplicationController
  
  def index
    if params[:category].in? ['Php', 'Movie', 'Talk', 'Marketing', 'Money', 'Writing', 'Live']
      movie = Movie.where(category: params[:category])
      @movies = movie.page(params[:page]).per(18)
    else
      movie = Movie.where(category: ['Basic', 'Git', 'Ruby', 'Ruby on Rails'])
      @movies = movie.page(params[:page]).per(18)
    end
  end
end