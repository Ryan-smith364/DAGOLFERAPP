class SessionsController < ApplicationController

    def new

    end 

    def create
        username = params[:username]
        user = User.find_by(username:username)
        
        if user 
            session["username"] = user.name 
            session["userid"] = user.id 
            redirect_to courses_path
        else 
            flash["error"] = "Incorrect username"
            redirect_to login_path
        end 
    end 

    def logout
        session.clear   
        redirect_to login_path
    end 


end

