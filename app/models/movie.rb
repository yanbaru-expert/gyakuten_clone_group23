class Movie < ApplicationRecord
  validates :title, :url, presence: true
  has_many :watched_buttons

  def watched_by?(user)
    watched_buttons.where(user_email: user.email).exists?
  end
end