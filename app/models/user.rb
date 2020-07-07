class User < ApplicationRecord
    has_many :reviews, dependent: :destroy 
    has_many :courses, through: :reviews
    has_many :user_courses , dependent: :destroy
    has_many :courses, through: :user_courses
    validates :name, :handicap, :username, :password, presence: true
    validates :username, uniqueness: {case_sensitive: false}
    validates :handicap, inclusion: {in: 0..40 , message: "can't be less the zero or greater than fourty"}
    has_secure_password
    # validates :password, uniqueness: {case_sensitive: false}
    # validates :name, :handicap :
end

def average_rating
    average = 0
    total = 0
        self.reviews.each do |review|
                total = review.rating + total
        end
        
        average = total.to_f / self.reviews.length
        agerage = sprintf('%.2f', average)
        
end


#change validations
