class CarpoolsController < ApplicationController
  before_action :set_neighborhood
  before_action :set_carpool, only: [:edit, :show, :update, :destroy]

  def index
    @carpools = @neighborhood.carpools
  end

  def new
    @carpool = @neighborhood.carpools.new
  end

  def create
    @carpool = @neighborhood.carpools.new(carpool_params)
    @carpool.users << current_user

    if @carpool.save
      redirect_to :back, notice: 'Carpool was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update

    if @carpool.update_attributes(:carpool)
      redirect_to @carpool, notice: 'Carpool was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @carpool.destroy
    redirect_to :back, notice: 'Carpool was successfully destroyed.'
  end

  def join_carpool
    @carpool.users << current_user

    if @carpool.save
      redirect_to neighborhood_carpool_path(@neighborhood, @carpool), notice: 'You joined this Carpool!'
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
    params.require(:carpool).permit(:name, :neighborhood_id)
  end

end
