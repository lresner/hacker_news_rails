class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def new
  end

  def create
    params[:post][:user_id] = session[:user_id]
    Post.create(params[:post])
    redirect_to(root_path)
  end


end
