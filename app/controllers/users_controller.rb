class UsersController < ApplicationController
  before_action :require_user, only: [:index, :show, :update, :destroy]

  def index
  	@users = User.all

  end

  def show
  	@user = User.find params[:id]
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.create user_params
    if @user.save 
      session[:user_id] = @user.id 
      redirect_to '/' 
    else 
      redirect_to '/signup' 
    end

	  #redirect_to user
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to user
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to users_path
  end

  private

  def user_params
  	params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
