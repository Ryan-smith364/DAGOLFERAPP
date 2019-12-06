class Course < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :user_courses
    has_many :users, through: :user_courses
    belongs_to :location

    def self.search(search)
        if search
            course = Course.find_by(name: search)
            if course
                
                self.where(id: course)
            else
                Course.all
            end
        else
            Course.all
        end
    end
end
