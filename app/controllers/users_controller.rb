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
        if @user.valid?
            session["username"] = @user.name 
            session["userid"] = @user.id 
            redirect_to about_path
        else
            render :new          
        end             
    end


    def edit

    end

    def update
        @user.update(strong_params)
        if @user.valid?
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    def show

    end 
    
    def destroy
        @user.user_courses.destroy_all
        @user.reviews.destroy_all
        @user.delete
        session.clear  
        redirect_to login_path
    end

    private 


     def get_user
        @user = User.find(params[:id]) 
     end 

     def strong_params
        params.require(:user).permit(:name,:handicap, :username, :password) 

     end 
    


end
