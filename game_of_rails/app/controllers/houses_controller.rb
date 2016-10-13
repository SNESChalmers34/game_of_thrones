class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = House.create(houses_params)
    @house.save

    redirect_to houses_path
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    @house.update(houses_params)

    redirect_to houses_path
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy

    redirect_to houses_path
  end

  private
  def houses_params
    params.require(:house).permit(:name, :img_url, :motto, :territory)
  end

end
