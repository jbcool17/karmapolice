class PointsController < ApplicationController
  #before_action :check_if_admin, :only => []
  
  
  def index
  	@points = Point.all
  	@activities = Activity.all
  	@users = User.all
    @current_user = User.find session[:user_id]
  end


  def show
    # @point = Point.find params[:id]
    # @activities = Activity.all

    # #Gets all activity ids
    # @activity_ids = []
    # @activities.each do |id|
    #   @activity_ids << id.id
    # end
    # #Gets total points of activity
    # @point_totals = {}
    #   @activity_ids.each do |x|
    #     p = Point.where(:activity_id => x)
    #     @point_totals[x] = 0
    #     p.each do |y|
    #       @point_totals[x] += y.points
    #     end
    #   end
    #   @total = @point_totals
    # @who_voted = []
    # @voting_ids = Point.where(:activity_id => @point.activity_id)
    # @voting_ids.each do |id|
    #   @who_voted << id.voting_user_id
    # end
    # @who_voted

  end

  def new
    @point = Point.new #:activity_id => params[:id]
    @a = params[:activity_id]
    @b = Activity.find(@a).activity
    @c = Activity.find(@a).user_id
  end

  def create
    @point = Point.create point_params
    @a = point_params[:activity_id]

    @activity = Activity.find(point_params[:activity_id])

    if @point.save # Check if the user is valid (per the validations in the model)
      redirect_to activity_path(point_params[:activity_id])
    else
      # @b = Activity.find(@a).activity
      # @c = Activity.find(@a).user_id
      redirect_to new_activity_point_path(@activity, @point) #activity_path(point_params[:activity_id])
      flash[:message] = "Invalid Entry. Please try again."
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
