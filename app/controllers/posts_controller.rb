class PostsController < ApplicationController
  before_action :signed_in_user, only: [ :new, :create ]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def signed_in_user
    unless logged_in?
      flash[:danger] = "Please sign in"
      redirect_to login_url
    end
  end
end
