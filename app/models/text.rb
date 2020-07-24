class Text < ApplicationRecord
  validates :genre, :title, :content, presence: true
end
