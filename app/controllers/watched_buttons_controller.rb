class WatchedButtonsController < ApplicationController
  def create
    watched_button = current_user.watched_buttons.build(movie_title: params[:movie_title])
    watched_button.save
  end

  def destroy
    watched_button = Watched_button.find(movie_title: params[:movie_title], user_email: current_user.email)
    watched_button.destroy
  end
end