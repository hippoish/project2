class NeighborhoodsController < ApplicationController

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
    @neighborhood = Neighborhood.find(params[:id])
  end

  def edit
    @neighborhood = Neighborhood.find(params[:id])
  end

  def update
    @neighborhood = Neighborhood.find(params[:id])

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
end
