class ActivitiesController < ApplicationController
  def index
  	@activities = Activity.all
  	@users = User.all



  end

  def show
  	@activity = Activity.find params[:id]

    @all_points = Point.where(:activity_id => @activity.id)
  end

  def new
    @activity = Activity.new
  end

  def create
    activity = Activity.create activity_params
    redirect_to activity
  end

  def edit
  end

  private

  def activity_params
    params.require(:activity).permit(:activity, :user_id)
  end
end
