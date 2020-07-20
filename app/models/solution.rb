class Solution < ApplicationRecord
  belongs_to :question
  validates :title, :detail, presence: true
end
