class HousesController < ApplicationController
  def index
    @house = House.all
  end
  def new
    @house = House.new
  end
  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to houses_path
    else
      render :new
    end
  end
  def edit
    @house = House.find(params[:id])
  end
  def update
    @house = House.find(params[:id])
    if @house.update(house_params)
      redirect_to houses_path, notice: "更新しました"
    else
      render :edit
    end
  end
  private
  def house_params
    params.require(:house).permit(:building, :money, :address, :years, :other)
  end
end
