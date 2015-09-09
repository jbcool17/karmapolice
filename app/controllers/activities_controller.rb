class ActivitiesController < ApplicationController

  before_action :check_if_logged_in, :only => [:index, :edit, :update, :show, :new, :destroy]

  def index
  	@activities = Activity.all
  	@users = User.all
    @points = Point.all
    #@current_user = User.find session[:user_id]

    @current_user_activities = @current_user.activities

    # @point_totals = {}
    # @current_user_activities.each do |x|
    #   p = x.points
    #   @point_totals[x] = 0
    #   p.each do |y|
    #     @point_totals[x.id] += x
    #   end
    # end
    # @point_totals

    


    #@all_points_current_user = @points.where(:activity_user_id => @current)

    # @activity_ids = []
    # @activities.each do |id|
    #   @activity_ids << id.id
    # end

    

  end

  def show
  	@activity = Activity.find params[:id]
    #@all_points = Point.where(:activity_id => @activity.id)
    #@current_user = User.find session[:user_id]

    #get total
    @total = 0
    @activity.points.each do |points|
      @total += points.points
    end

  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create activity_params
    if @activity.save # Check if the user is valid (per the validations in the model)
      redirect_to activity_path(@activity)
    else
      render :new
    end
    
  end

  def edit
    @activity = Activity.find params[:id]
    @current_user = User.find(session[:user_id])
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
    params.require(:activity).permit(:activity, :user_id, :description, :created_by_id)
  end

  def check_if_logged_in
    redirect_to root_path unless @current_user.present?
  end

end
