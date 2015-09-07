class UsersController < ApplicationController
  #before_action :require_user, only: [:show, :update, :destroy]
  before_action :check_if_logged_in, :only => [:index, :edit, :update]


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
      render :new 
    end

	  #redirect_to user
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = current_user
    if @user.update user_params
      redirect_to root_path
    else
      render :edit
    end
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

  def check_if_logged_in
    redirect_to root_path unless @current_user.present?
  end


end
