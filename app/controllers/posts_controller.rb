class PostsController < ApplicationController
  before_action :set_neighborhood, :set_user, :set_post

  def index
    @posts = @neighborhood.posts
  end

  def new
    @post = @neighborhood.posts.new
  end

  def create
    @post = @neighborhood.posts.new

    if @post.save
      redirect_to @neighborhood, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def show
    @post
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
end
