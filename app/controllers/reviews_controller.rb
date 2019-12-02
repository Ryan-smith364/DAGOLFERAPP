class ReviewsController < ApplicationController
   

    def show
    end 

    private 
  
    def get_review
        @review = Review.find(params[:id])
    end 


end
