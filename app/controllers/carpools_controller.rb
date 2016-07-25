class CarpoolsController < ApplicationController
  before_action :set_neighborhood

  def index
    @carpools = @neighborhood.carpools
  end

  def new
    @carpool = @neighborhood.carpools.new
  end

  def create
    @carpool = @neighborhood.carpools.new

    if @carpool.save
      redirect_to @carpool, notice: 'Carpool was successfully created.'
    else
      render :new
    end
  end

  def show
    @carpool = Carpool.find(params[:id])
  end

  def edit
    @carpool = Carpool.find(params[:id])
  end

  def update
    @carpool = Carpool.find(params[:id])

    if @carpool.update_attributes(:carpool)
      redirect_to @carpool, notice: 'Carpool was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @carpool.destroy
    redirect_to current_user, notice: 'Carpool was successfully destroyed.'
  end

private
  def set_neighborhood
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
  end

end
