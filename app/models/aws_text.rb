class AwsText < ApplicationRecord
  validates :title, :url, presence: true
end
