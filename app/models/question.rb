class Question < ApplicationRecord
  has_many :solutions
  validates :title, :detail, presence: true
  accepts_nested_attributes_for :solutions
end
