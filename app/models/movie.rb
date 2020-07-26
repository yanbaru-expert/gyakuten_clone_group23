class Movie < ApplicationRecord
  validates :title, :url, presence: true
  has_many :watched_buttons

  def watched_by?(current_user)
    watched_buttons.where(user_email: current_user.email).exists?
  end
end