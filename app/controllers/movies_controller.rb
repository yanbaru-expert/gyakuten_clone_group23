class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new

  end

  def create
    flash[:notice] = "投稿しました"
  end

  def show

  end

  def edit
  end

  def update
    flash[:notice] = "更新しました"
  end

  def destroy
    flash.now[:alert] = "削除しました"
  end
end