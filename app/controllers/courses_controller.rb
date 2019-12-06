class CoursesController < ApplicationController
    
    # before_action  :authorized , except: [:home]

    def index
        
        @courses = Course.all
        @courses = Course.search(params[:search])
    end

    def show
        @course = Course.find(params[:id])
        @review = Review.new(course_id: params[@course])
        @user_course = UserCourse.new
        # @user_course = UserCourse.new()
    end

    private

    def course_params
      params.require(:course).permit(:name, :desc, :location_id, :par, :search)
    end
end
