class PointsController < ApplicationController
  def index
  	@points = Point.all
  	@activities = Activity.all
  	@users = User.all

  	#Gets All Activity IDs
  	@activity_ids = []
  	@activities.each do |id|
  		@activity_ids << id.id
  	end

  	#Get total points for each activity
  	@point_totals = {}
	@activity_ids.each do |x|
		p = Point.where(:activity_id => x)
		@point_totals[x] = 0
		p.each do |y|
			@point_totals[x] += y.points
		end
	end

	#Gets Users of each activity
	# @activity_users = []
	# @activity_ids.each do |id|
	# 	@activity_users << id.user_id
	# end




  end


  def show
  end

  def new
  end

  def edit
  end

end
