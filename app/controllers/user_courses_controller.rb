class UserCoursesController < ApplicationController
    def new
        @user_course = UserCourse.new
    end

    def create
        @user_course = User_course.create(params[:user_id], parmas[:course_id])

        redirect_to course_path(@user_course.course)
    end
end
