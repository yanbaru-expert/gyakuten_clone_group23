class Movie < ApplicationRecord
    validates :title, :content, presence: true
end
