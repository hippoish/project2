class PostsController < ApplicationController
  before_action :set_neighborhood#, :set_post, :set_user

  def index
    @posts = @neighborhood.posts
  end

  def new
    @post = @neighborhood.posts.new
    @user = current_user
  end

  def create
    @post = @neighborhood.posts.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      redirect_to @neighborhood, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update

    if @post.update_attributes(:post)
      redirect_to @neighborhood, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to @neighborhood, notice: 'Post was successfully destroyed.'
  end

private
  def set_neighborhood
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content, :user_id, :neighborhood_id)
  end
end
