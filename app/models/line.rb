class Line < ApplicationRecord
  validates :genre, :title, :contents, presence: true
end
