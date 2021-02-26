class CamperActivitiesController < ApplicationController
  def new 
    @campers = Camper.all
    @activities = Activity.all

    @camper_activity = CamperActivity.new
  end 

  def create  
   camper_activity = CamperActivity.create(camper_activity_params)
   redirect_to camper_path(camper_activity.camper)
  end 


  private 

  def camper_activity_params
    params.require(:camper_activity).permit(:time, :activity_id, :camper_id)
  end 



end
