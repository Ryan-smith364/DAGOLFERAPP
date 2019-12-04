class User < ApplicationRecord
    has_many :reviews 
    has_many :courses, through: :reviews
    has_many :user_courses
    has_many :courses, through: :user_courses

    # validates :name, :handicap :
end
