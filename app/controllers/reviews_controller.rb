class ReviewsController < ApplicationController
 
    before_action :get_review ,only:[:show]

    def show
    end 

    def new
        @review = Review.new()
     
    end 

    def create
        @review = Review.create(strong_params)
      
        redirect_to review_path(@review) 
    end 


    private 
  
    def get_review
        @review = Review.find(params[:id])
    end 

    def strong_params
        params.require(:review).permit(:user_id ,:course_id,:review_text,:rating)
    end 


end


