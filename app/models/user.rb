class User < ApplicationRecord
    has_many :reviews, dependent: :destroy 
    has_many :courses, through: :reviews
    has_many :user_courses , dependent: :destroy
    has_many :courses, through: :user_courses
    validates :name, :handicap, presence: true
    validates :name, uniqueness: {case_sensitive: false}
    validates :handicap, inclusion: {in: 0..40 , message: "can't be less the zero or greater than fourty"}
    # validates :name, :handicap :
end
