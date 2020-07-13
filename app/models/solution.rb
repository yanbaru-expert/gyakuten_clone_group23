class Solution < ApplicationRecord
  validates :title, :detail, presence: true
end
