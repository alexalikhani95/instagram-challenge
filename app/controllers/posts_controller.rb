class PostsController < ApplicationController
  def index; end

  def new; end
end

def new
  @post = Post.new
end
