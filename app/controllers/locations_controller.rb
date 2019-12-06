class LocationsController < ApplicationController

    before_action  :authorized , except: [:home]
   
    def home
    end 
    
    def index
        @locations = Location.all
    end

    def show
        @location= Location.find(params[:id])
    end
end
