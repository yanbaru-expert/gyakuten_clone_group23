class WatchedButton < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  validates_uniqueness_of :movie_id, scorp: :user_id
end