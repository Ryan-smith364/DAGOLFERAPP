class User < ApplicationRecord
    has_many :reviews 
    has_many :courses, through: :reviews

    # validates :name, :handicap :
end
