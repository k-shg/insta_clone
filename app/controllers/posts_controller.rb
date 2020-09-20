class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new; end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit; end

  def post_params
    params.require(:post).permit(:body, :images)
  end
end
