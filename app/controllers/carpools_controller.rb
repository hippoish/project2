class CarpoolsController < ApplicationController
  def index
    @carpools = Carpool.all
  end

  def new
    @carpool = Carpool.new
  end

  def create
    @carpool = Carpool.new

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
end
