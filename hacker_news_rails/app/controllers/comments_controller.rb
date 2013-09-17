class CommentsController < ApplicationController
   def index
    @user = User.find(params[:user_id])
  end

   def postcomments
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
   params[:comment][:user_id] = session[:user_id]
   @post = Post.find(params[:post_id])
    @post.comments.create(params[:comment])
    redirect_to(root_path)
  end
end
