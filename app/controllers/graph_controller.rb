class GraphController < ApplicationController
  def index
  	@points = Point.all
    
    @array = []

    @points.each do |x|
      @array << x.points
    end
    

  end
  #GETTING DATA to JSON
  def data

    @array = []
    @points.each do |x|
      @array << x.points
    end
    respond_to do |format|
      format.json {
        render :json => @array
      }
    end
  end
end
