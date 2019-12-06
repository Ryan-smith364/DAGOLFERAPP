class User < ApplicationRecord
    has_many :reviews, dependent: :destroy 
    has_many :courses, through: :reviews
    has_many :user_courses , dependent: :destroy
    has_many :courses, through: :user_courses
    validates :name, :handicap, :password , presence: true
    validates :name, uniqueness: {case_sensitive: false}
    validates :password, uniqueness: {case_sensitive: false}
    validates :handicap, inclusion: {in: 0..40 , message: "can't be less the zero or greater than fourty"}
    has_secure_password
    # validates :name, :handicap :
end
