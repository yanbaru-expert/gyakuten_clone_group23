class WatchedButtonsController < ApplicationController
  def create
    watched_button = current_user.watched_buttons.build(movie_id: params[:movie_id])
    watched_button.save
    redirect_back(fallback_location: movies_path)
  end

  def destroy
    watched_button = WatchedButton.find_by(movie_id: params[:movie_id], user_id: current_user.id)
    watched_button.destroy
    redirect_back(fallback_location: movies_path)
  end

  
end