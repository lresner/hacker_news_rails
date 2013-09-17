class SessionsController < ApplicationController
  def logout
    session.clear
    redirect_to(root_path)
  end

  def sign_in

  end

  def create
    @user = User.find_by_username(params[:session][:username])
    if @user #&& user.authenticate?
      session[:user_id] = @user.id
      redirect_to(root_path)
    else
      #error
    end
  end
end
