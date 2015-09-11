class PointsController < ApplicationController
  #before_action :check_if_admin, :only => []
  
  
  def index
  	@points = Point.all
  	@activities = Activity.all
  	@users = User.all
    @current_user = User.find session[:user_id]
  end


  def show
    @point = Point.find params[:id]
  end

  def new
    @point = Point.new #:activity_id => params[:id]

    a = params[:activity_id]
    @activity_name = Activity.find(a).activity
    @activity_preformer = Activity.find(a).user_id
  end

  def create

    @point = Point.create point_params
    @activity = Activity.find(point_params[:activity_id])

    if @point.save # Check if the user is valid (per the validations in the model)
      redirect_to activity_path(point_params[:activity_id])
    else
      #sets up form with correct activity
      redirect_to new_activity_point_path(@activity, @point)
      flash[:message] = "You didn't add a comment. Please try again."
    end
  end

  def edit
    @point = Point.find params[:id]
  end

  def update
    point = Point.find params[:id]
    point.update point_params
    redirect_to point
  end

  def destroy
    point = Point.find params[:id]
    point.destroy
    redirect_to points_path
  end 

  private

  def point_params
    params.require(:point).permit(:activity_id, :voting_user_id, :points, :activity_user_id, :comment)
  end

  def check_if_admin
    redirect_to root_path unless @current_user.present? && @current_user.admin?
  end

end
