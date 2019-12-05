class User < ApplicationRecord
    has_many :reviews, dependent: :destroy 
    has_many :courses, through: :reviews
    has_many :user_courses , dependent: :destroy
    has_many :courses, through: :user_courses
    validates :name, :handicap, presence: true
    validates :name, uniqueness: {case_sensitive: false}
    # validates :name, :handicap :
end
