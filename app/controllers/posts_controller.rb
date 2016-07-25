class PostsController < ApplicationController
  before_action :set_neighborhood, :set_user

  def index
  end

  def new

  end

  def create

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy

  end

private
  def set_neighborhood
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
