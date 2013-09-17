class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.find_by_username(params[:user][:username])
    if @user
      #error
    else
      @user = User.create(params[:user])
      session[:user_id] = @user.id
      redirect_to(root_path)
    end
  end

end
