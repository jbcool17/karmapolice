class ActivitiesController < ApplicationController

  # before_action :check_if_logged_in, :only => [:index, :edit, :update, :show, :new, :destroy]

  def index
  	@activities = Activity.all
  	@users = User.all
    @points = Point.all
    @current_user = User.find session[:user_id]

    @all_points_current_user = @points.where(:activity_user_id => @current)

    @activity_ids = []
    @activities.each do |id|
      @activity_ids << id.id
    end

    @point_totals = {}
      @activity_ids.each do |x|
        p = Point.where(:activity_id => x)
        @point_totals[x] = 0
        p.each do |y|
          @point_totals[x] += y.points
        end
      end
      @point_totals

  end

  def show
  	@activity = Activity.find params[:id]
    @all_points = Point.where(:activity_id => @activity.id)
    @current_user = User.find session[:user_id]

    @total = 0
    @all_points.each do |points|
      @total += points.points
    end
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create activity_params
    if @activity.save # Check if the user is valid (per the validations in the model)
      redirect_to root_path
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

  # def check_if_logged_in
  #   redirect_to activities_path unless @current_user.present?
  # end

end
