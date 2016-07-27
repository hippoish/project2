class NeighborhoodsController < ApplicationController
  before_action :set_neighborhood

  def new
    @neighborhood = Neighborhood.new
  end

  def create
    @neighborhood = Neighborhood.new

    if @neighborhood.save
      redirect_to current_user, notice: 'Neighborhood was successfully created.'
    else
      render :new
    end
  end

  def show
    @carpool = Carpool.new
    @post = Post.new
    @reply = Reply.new
  end

  def edit
  end

  def update

    if @neighborhood.update_attributes(:neighborhood)
      redirect_to current_user, notice: 'Neighborhood was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @neighborhood.destroy
    redirect_to current_user, notice: 'Neighborhood was successfully destroyed.'
  end

private
  def set_neighborhood
    @neighborhood = Neighborhood.find(params[:id])
  end
end
