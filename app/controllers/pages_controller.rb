class PagesController < ApplicationController
  
  def index
  	@points = Point.all
  	@users = User.all
  	@activity = Activity.all


    #GET Activities with a count > 0
    act_count = {}
    @users.each do |u|
      if u.activities.count > 0
        act_count[u.id] = u.activities.count
      end
    end
    
    #Get Users with points -set to zero
    points_store = {}
    @points.each do |p|
       points_store[p.activity_user_id] = 0
    end
    #Add up those points
    @points.each do |p|
      points_store[p.activity_user_id] += p.points
    end

    #Divide points but activity count
    act_count.each do |a|
      if points_store[a[0]]
        points_store[a[0]] /= a[1]
      else
        points_store[a[0]] = 0
      end
    end
  	@points_store = points_store
  	
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

    #People with zero
    @zero = (@rankings.count - @points_store.select{|k,v| v == 0}.count) + 1

  	if session[:user_id]
      @user = User.find session[:user_id]
      @current_user = User.find session[:user_id]
    end
  end

  


end
