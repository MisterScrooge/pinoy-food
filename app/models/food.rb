class Food < ApplicationRecord
    validates :food, presence: true
    validates :rating, presence: true
end
