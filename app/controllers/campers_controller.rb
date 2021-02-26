class CampersController < ApplicationController

    def index
        @campers = Camper.all
        # render :index
    end

    def show 
        @camper = Camper.find(params[:id])
    end 

end
