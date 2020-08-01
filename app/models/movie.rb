class Movie < ApplicationRecord
  validates :title, :url, presence: true
  has_many :watched_buttons, dependent: :destroy

  def watched_button_by?(current_user)
    watched_buttons.where(user_id: current_user.id).exists?
  end
end