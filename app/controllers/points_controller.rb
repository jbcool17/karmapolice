class PointsController < ApplicationController
  def index
  	@points = Point.all
  	@activities = Activity.all
  	@users = User.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
