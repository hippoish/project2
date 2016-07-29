class NeighborhoodsController < ApplicationController
  before_action :set_neighborhood, except: :index

  def index
    @neighborhoods = Neighborhood.all
  end

  def new
    @neighborhood = Neighborhood.new
  end

  def create
    @neighborhood = Neighborhood.new

    if @neighborhood.save
      redirect_to current_user
    else
      render :new
    end
  end

  def show
    @carpool = Carpool.new
    @post = Post.new
    @reply = Reply.new
    @image = @neighborhood.img_url
  end

  def edit
  end

  def update

    if @neighborhood.update_attributes(:neighborhood)
      redirect_to @neighborhood
    else
      render :edit
    end
  end

private
  def set_neighborhood
    @neighborhood = Neighborhood.find(params[:id])
  end

end
