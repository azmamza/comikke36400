class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end


  def edit
    @post = Post.find(params[:id])
    redirect_to action: :index unless @post.user.id == current_user.id
  end

  def search
    @posts = Post.search(params[:keyword])
  end

  private

  def post_params
    params.require(:post).permit(:name, :genre_id, :rating, :title, :review).merge(user_id: current_user.id)
  end

end