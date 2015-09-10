class PagesController < ApplicationController
  
  def index
  	@points = Point.all
  	@users = User.all
  	@activity = Activity.all

    #RANKING CODE
    #Getting Activities with a count > 0
    act_count = {}
    @users.each do |user|
      if user.activities.count > 0
        act_count[user.id] = user.activities.count
      end
    end

    #Gettomg Users with points - setting to zero for totals.
    points_store = {}
    @points.each do |point|
       points_store[point.activity_user_id] = 0
    end

    #Add up those points
    @points.each do |point|
      points_store[point.activity_user_id] += point.points
    end

    #Divide points by activity count
    act_count.each do |activity|
      if points_store[activity[0]]
        points_store[activity[0]] /= activity[1]
      else
        points_store[activity[0]] = 0
      end
    end

  	@points_store = points_store

    #SORTING RANKS - sort by order of second value.
    @sorted = @points_store.sort_by { |x| x[1]}
    #reverse them
    @sorted.reverse!
    #give them a rank. - adds index number
    @rankings = @sorted.map.with_index.to_a

    #People who have done activities but have zero points
    @zero = (@rankings.count - @points_store.select{|k,v| v == 0}.count) + 1

  	if session[:user_id]
      @user = User.find session[:user_id]
      @current_user = User.find session[:user_id]
    end
  end

  


end
