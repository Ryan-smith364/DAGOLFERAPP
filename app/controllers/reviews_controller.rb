class ReviewsController < ApplicationController
 
    before_action :get_review ,only:[:show, :destroy, :edit, :update]

   

    def new
        @review = Review.new()
     
    end 
    def create
      
        @review = Review.create(strong_params)
         # redirect_to review_path(@review) 
        redirect_to course_path(@review.course)
    end 

    def edit
        @course = @review.course
    end

    def update
      
        @review.update(strong_params)
        redirect_to users_path(@review.user)
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


