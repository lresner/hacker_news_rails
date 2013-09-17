class SessionsController < ApplicationController
  def logout
    session.clear
    redirect_to(root_path)
  end

  def sign_in

  end

  def create
    #find user
    #if user auth then create session and redirect
    redirect_to(root_path)
  end
end
