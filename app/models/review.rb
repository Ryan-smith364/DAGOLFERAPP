class Review < ApplicationRecord
    belongs_to :course
    belongs_to :user
    accepts_nested_attributes
    validates :review_text, :rating, presence: true
end
