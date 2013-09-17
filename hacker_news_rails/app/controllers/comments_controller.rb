class CommentsController < ApplicationController
   def index
    @user = User.find(params[:user_id])
  end

   def postcomments
    @post = Post.find(params[:post_id])
  end

  def create
    @comment = Comment.new()
    @post.save
   redirect_to action: :show, id:@post.id
  end
end
