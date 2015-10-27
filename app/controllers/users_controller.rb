class UsersController < ApplicationController
  
  before_action :check_if_logged_in, :only => [:index, :edit, :update, :show]
  before_action :check_if_admin, :only => [:index, :destroy]  


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
  	user_details = user_params 
    # Using cloudinary to upload user profile pics
    
    if params[:file]
        response = Cloudinary::Uploader.upload params[:file]
        user_details["profile_picture"] = response["url"]
    end 
    @user = User.new user_details
    
    if @user.save # Check if the user is valid (per the validations in the model)
      session[:user_id] = @user.id #logs user in after creation/save
      redirect_to activities_path
    else
      render :new
    end
    
  end

  def edit

    if @current_user.admin?
      @user = User.find params[:id]
    else
      @user = @current_user
    end
    
    
  end

  def update

    @user = @current_user
    user_details = user_params
    
   if params[:file]
        response = Cloudinary::Uploader.upload params[:file]
        user_details["profile_picture"] = response["url"]
    end
    # binding.pry
    if @user.update(user_details)
      redirect_to @user
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
  	params.require(:user).permit(:email, :name, :password, :password_confirmation, :profile_picture)
  end

  def check_if_logged_in
    #binding.pry
    redirect_to root_path unless @current_user.present?
  end

  def check_if_admin
    redirect_to root_path unless @current_user.present? && @current_user.admin?
  end


end
