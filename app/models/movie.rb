class Movie < ApplicationRecord
    validates :category, :title, :url, presence: true
end
