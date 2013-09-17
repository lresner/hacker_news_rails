class WelcomeController < ApplicationController
   def index
    # current_user
    @posts = Post.all.reverse

  end
end
