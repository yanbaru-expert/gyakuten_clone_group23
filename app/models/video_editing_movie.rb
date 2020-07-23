class VideoEditingMovie < ApplicationRecord
  validates :title, :url, presence: true
end
