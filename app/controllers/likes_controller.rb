class LikesController < ApplicationController
  before_action :require_login, only: %i[create destroy]
  def create
    @post = Post.find(params[:post_id])
    current_user.like(@post)
  end

  def destroy
    @like = Like.find(params[:id])
    @post = @like.post
    current_user.unlike(@post)
  end
end
