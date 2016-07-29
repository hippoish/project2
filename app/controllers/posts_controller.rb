class PostsController < ApplicationController
  before_action :set_neighborhood

  def new
    @post = @neighborhood.posts.new
  end

  def create
    @post = @neighborhood.posts.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to @neighborhood
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @post = Post.find(params[:id])

    @post.destroy
    redirect_to :back
  end

private
  def set_neighborhood
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
  end

  def post_params
    params.require(:post).permit(:content, :user_id, :neighborhood_id)
  end
end
