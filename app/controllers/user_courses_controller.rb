class UserCoursesController < ApplicationController
   
    before_action  :authorized , except: [:home]

    def new
        @user_course = UserCourse.new
    end

    def create
        @user_course = UserCourse.create(strong_params)

        redirect_to course_path(@user_course.course)
    end

    def destroy
        @user_course = UserCourse.find(params[:id])
        path = @user_course.user
        @user_course.delete
        redirect_to user_path(path)
    end

    private


    def strong_params
        params.require(:user_course).permit(:user_id,:course_id) 
     end 
     
end
