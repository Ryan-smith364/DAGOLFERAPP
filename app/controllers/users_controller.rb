class UsersController < ApplicationController
   
    before_action :get_user ,only:[:show, :edit, :update, :destroy]

    def index
        @users = User.all
    end

    def new 
        @user = User.new
    end

    def create
        @user = User.create(strong_params)
        redirect_to user_path(@user)
    end

    def edit

    end

    def update
        @user.update(strong_params)
        redirect_to user_path(@user)
    end

    def show

    end 
    
    def destroy
        @user.reviews.destroy_all
        @user.delete
        session.clear  
        # redirect_to users_path
        redirect_to login_path
    end

    private 


     def get_user
        @user = User.find(params[:id]) 
     end 

     def strong_params
        params.require(:user).permit(:name,:handicap) 
     end 
    


end
