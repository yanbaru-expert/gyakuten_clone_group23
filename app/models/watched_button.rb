class WatchedButton < ApplicationRecord
  validates_uniqueness_of :movie_title, scorp: :user_email
end


