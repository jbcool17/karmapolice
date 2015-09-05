class ActivitiesController < ApplicationController
  def index
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
