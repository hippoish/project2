class CarpoolsController < ApplicationController
  before_action :set_neighborhood
  before_action :set_carpool, only: [:edit, :show, :update, :destroy, :join_carpool, :leave_carpool]

  def index
    @carpools = @neighborhood.carpools
  end

  def new
    @carpool = @neighborhood.carpools.new
  end

  def create
    @carpool = @neighborhood.carpools.new(carpool_params)
    @carpool.users = []
    @carpool.users << current_user

    if @carpool.save
      redirect_to :back
    else
      render :new
    end
  end

  def show
    @image = @neighborhood.img_url
  end

  def edit
  end

  def update

    if @carpool.update_attributes(:carpool)
      redirect_to @carpool
    else
      render :edit
    end
  end

  def destroy
    @carpool.destroy
    @carpool.users.each do |user|
      user.carpool = nil
    end
    current_user.carpool = nil
    redirect_to @neighborhood
  end

  def join_carpool
    @carpool.users << current_user
    current_user.carpool = @carpool

    if @carpool.save
      redirect_to neighborhood_carpool_path(@neighborhood, @carpool)
    else
      render :edit
    end
  end

  def leave_carpool
    current_user.update(carpool_id: nil)
    # current_user.save

    if current_user.save
      redirect_to neighborhood_carpool_path(@neighborhood, @carpool)
    else
      render :edit
    end
  end

private
  def set_neighborhood
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
  end

  def set_carpool
    @carpool = Carpool.find(params[:id])
  end

  def carpool_params
    params.require(:carpool).permit(:name, :neighborhood_id, :description)
  end

end
