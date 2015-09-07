class ActivitiesController < ApplicationController

  before_action :require_user, only: [:index, :show, :new, :update, :destroy]

  def index
  	@activities = Activity.all
  	@users = User.all
    @points = Point.all
    @current = @current_user

    @all_points_current_user = @points.where(:activity_user_id => @current)

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
    @activity = Activity.find params[:id]
  end

  def update
    activity = Activity.find params[:id]
    activity.update activity_params
    redirect_to activity
  end

  def destroy
    activity = Activity.find params[:id]
    activity.destroy
    redirect_to activities_path
  end

  private

  def activity_params
    params.require(:activity).permit(:activity, :user_id)
  end
end
