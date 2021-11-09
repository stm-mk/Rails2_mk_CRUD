class Post < ApplicationRecord
    validates :title, :body, presence: true
    validates :body, length: { minimum: 5, maximum: 140 }
    has_many :comments, dependent: :destroy
end
