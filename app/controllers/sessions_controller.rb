class SessionsController < ApplicationController

    def new

    end 

    def create
        username = params[:name]
        user = User.find_by(name:username)
        
        if user 
            session["username"] = user.name 
            session["userid"] = user.id 
            redirect_to courses_path
        else 
            flash["error"] = "Incorrect username or password"
            # render :new
            redirect_to login_path
        end 
    end 

    def logout
        session.clear   
        redirect_to login_path
    end 


end

