class Review < ApplicationRecord
    belongs_to :course
    belongs_to :user
    accepts_nested_attributes_for :course
    validates :review_text, :rating, presence: true
    validates :rating, inclusion: {in: 0..5 , message: "must be between zero and five"}
end
