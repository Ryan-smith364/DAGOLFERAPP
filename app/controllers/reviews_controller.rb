class ReviewsController < ApplicationController
 
    before_action :get_review ,only:[:show, :destroy, :edit, :update]

   

    def new
        @course = Course.where(:id => params[:course_id])
        @review = Review.new(course_id: params[@course])
        
    end 

    def create
     
        @review = Review.create(strong_params)

        if @review.valid?
            redirect_to course_path(@review.course)
        else
            render :new
        end
    end 

    def edit
        @course = @review.course
    end

    def update
        @course = @review.course
        @review.update(strong_params)
        if @review.valid?
            redirect_to users_path(@review.user)
        else
            render :edit
        end
    end

  
    def show

    end 

    def destroy
        path = @review.user
        @review.delete
        redirect_to user_path(path)
    end


    private 
  
    def get_review
        @review = Review.find(params[:id])
    end 

    def strong_params
        params.require(:review).permit(:user_id ,:course_id,:review_text,:rating)
    end 


end


