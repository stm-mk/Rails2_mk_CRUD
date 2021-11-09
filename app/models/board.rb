class Board < ApplicationRecord
    validates :title, :body, presence: true
    validates :body, length: { minimum: 5, maximum: 140 }
end
