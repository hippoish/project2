class RepliesController < ApplicationController
  before_action :set_neighborhood#, :set_post#, :set_user,
  before_action :set_post

  def index
    @replies = @post.replies
  end

  def new
    @reply = Reply.new
  end

  def create
    @reply = Reply.new(reply_params)
    @reply.user_id = current_user.id

    if @reply.save
      redirect_to @neighborhood, notice: 'Reply was successfully posted.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @reply = Reply.find(paramas[:id])

    if @reply.update_attributes(:reply)
      redirect_to @neighborhood, notice: 'Reply was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @reply = Reply.find(params[:id])

    @reply.destroy
    redirect_to :back, notice: 'Reply was successfully destroyed.'
  end

private
  def set_neighborhood
    if params[:neighborhood_id]
      @neighborhood = Neighborhood.find(params[:neighborhood_id])
    else
      @neighborhood = Neighborhood.find(params[:id])
    end
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
  #
  # def set_reply
  #   @reply = Reply.find(params[:id])
  # end

  def reply_params
    params.require(:reply).permit(:content, :user_id, :post_id)
  end
  #
  # def set_user
  #   @user = User.find(params[:user_id])
  # end
  #

end
