class PostsController < ApplicationController
  # before_action :set_food, only: %i[show edit update destroy]

  def index; end

  def new
    p 'got here'
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to @post
    end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:caption, :image)
  end
end
