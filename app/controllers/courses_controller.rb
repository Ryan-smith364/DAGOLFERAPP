class CoursesController < ApplicationController
    
    # before_action  :authorized , except: [:home]

    def index
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id])
        @review = Review.new(course_id: params[@course])
        @user_course = UserCourse.new
        # @user_course = UserCourse.new()
    end

    
end
