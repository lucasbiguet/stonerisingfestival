class PostsController < ApplicationController

  def show
    @post= Post.find(params[:id])
  end
  
  def index
    @posts = Post.paginate(page: params[:page], per_page: 10)
  end

  def new
  end
  
end