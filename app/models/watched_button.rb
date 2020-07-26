class WatchedButton < ApplicationRecord
  validates :user_email, :movie_title, presence: true
end


