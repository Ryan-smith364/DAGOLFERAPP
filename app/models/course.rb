class Course < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :user_courses
    has_many :users, through: :user_courses
    belongs_to :location
end
