class ActivitiesController < ApplicationController
  def index
  	@activities = Activity.all
  	@users = User.all



  end

  def show
  	@activity = Activity.find params[:id]
  end

  def new
  end

  def edit
  end
end
