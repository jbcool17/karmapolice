class PointsController < ApplicationController
  def index
  	@points = Point.all
  	@activities = Activity.all
  	@users = User.all

    get_totals


  	# #Gets All Activity IDs
  	# @activity_ids = []
  	# @activities.each do |id|
  	# 	@activity_ids << id.id
  	# end

  	# #Get total points for each activity
   #  @point_totals = {}
	  # @activity_ids.each do |x|
	 	#   p = Point.where(:activity_id => x)
		 #  @point_totals[x] = 0
		 #  p.each do |y|
			#   @point_totals[x] += y.points
		 #  end
	  # end




  end


  def show
    @point = Point.find params[:id]
    @total = get_totals


  end

  def new
  end

  def edit
  end

  private

  def get_activity_ids
    @activities = Activity.all
    @activity_ids = []
    @activities.each do |id|
      @activity_ids << id.id
    end
    @activity_ids
  end

  def get_totals
    @points = Point.all
    @users = User.all

    get_activity_ids

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



end
