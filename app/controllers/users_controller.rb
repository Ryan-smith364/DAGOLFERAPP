class UsersController < ApplicationController
   
    before_action :get_user ,only:[:show]

    def index
        @users = User.all
    end

    def new 
        @user = User.new
    end

    def create
        
    end


    def show

    end 
    

    private 


     def get_user
        @user = User.find(params[:id]) 
     end 

     def strong_params
        params.require(:user).permit(:name,:handicapp) 
     end 
    


end
