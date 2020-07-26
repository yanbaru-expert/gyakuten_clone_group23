class Movie < ApplicationRecord
  validates :title, :url, presence: true
  belongs_to :user
  has_many :watched_buttons

  def watched_by?(current_user)
    watched_buttons.where(user_id: current_user.id).exists?
  end
end