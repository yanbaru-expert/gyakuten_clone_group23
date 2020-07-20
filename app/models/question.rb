class Question < ApplicationRecord
  has_one :solution
  validates :title, :detail, presence: true
end
