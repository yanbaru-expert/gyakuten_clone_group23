class Movie < ApplicationRecord
  validates :title, :url, presence: true
  has_many :watched_buttons, dependent: :destroy

  def watched_button_by?(user)
    watched_buttons.where(user_id: user.id).exists?
  end
end