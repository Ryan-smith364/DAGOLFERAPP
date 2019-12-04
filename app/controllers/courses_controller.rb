class CoursesController < ApplicationController
    

    def index
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id])
        @review = Review.new(course_id: params[@course])
        # @user_course = UserCourse.new()
    end

    
end
