class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    #create new user
    #create session for user
    #redirect to root
  end

end
