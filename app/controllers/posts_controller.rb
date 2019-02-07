class PostsController < ApplicationController
  # before_action :set_food, only: %i[show edit update destroy]

  def index; end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      flash[:success] = 'Your post has been created.'
      redirect_to @post
    else
      flash[:alert] = 'Image required to make a post!'
      render :new
    end
end

  def show
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:caption, :image)
  end
end
