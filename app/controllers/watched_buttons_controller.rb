class WatchedButtonsController < ApplicationController
  def create
    watched_button = current_user.watched_buttons.build(movie_id: params[:movie_id])
    watched_button.save
  end

  def destroy
    watched_button = Watched_button.find(movie_id: params[:movie_id], user_id: current_user.id)
    watched_button.destroy
  end
end