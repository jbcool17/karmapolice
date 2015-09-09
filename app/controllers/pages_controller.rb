class PagesController < ApplicationController
  
  def index
  	@points = Point.all
  	@users = User.all
  	@activity = Activity.all

  	@points_store = {}
  	#set to zero
  	@points.each do |point|
  		@points_store[point.activity_user_id] = 0
  	end
    
  	#add points
  	@points.each do |point|

  		@points_store[point.activity_user_id] += point.points

  	end

    #Put total scores in order by secord number in array
    @sorted = @points_store.sort_by { |x| x[1]}
    #reverse them
    @sorted.reverse!
    #give them a rank.
    @rankings = @sorted.map.with_index.to_a

  	if session[:user_id]
      @user = User.find session[:user_id]
      @current_user = User.find session[:user_id]
    end
  end

  


end
