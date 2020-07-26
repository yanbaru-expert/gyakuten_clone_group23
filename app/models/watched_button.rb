class WatchedButton < ApplicationRecord
  validates_uniqueness_of :movie_id, scorp: :user_id
end