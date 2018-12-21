class PostsController < ApplicationController

  def index
    @posts = Post.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy
    redirect_to user_path(current_user)
  end

  private
  
  def post_params
    params.require(:post).permit(:description, :image, :user_id)
  end
end
