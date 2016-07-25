class RepliesController < ApplicationController
  before_action :set_neighborhood, #:set_user, :set_post, :set_reply

  def index
    @replies = @post.replies
  end

  def new
    @reply = @post.replies.new
  end

  def create
    @reply = @post.replies.new

    if @reply.save
      redirect_to @post, notice: 'Reply was successfully posted.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update

    if @reply.update_attributes(:reply)
      redirect_to @post, notice: 'Reply was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @reply.destroy
    redirect_to @post, notice: 'Reply was successfully destroyed.'
  end

  private
    def set_neighborhood
      @neighborhood = Neighborhood.find(params[:neighborhood_id])
    end

    def set_post
      @post = Post.find(params[:post_id])
    end
    # 
    # def set_user
    #   @user = User.find(params[:user_id])
    # end
    #
    # def set_reply
    #   @reply = Reply.find(params[:id])
    # end
end
