class TrainsController < ApplicationController
  def create
    @train = Train.new(trains_params)
    if @train.save
      redirect_to houses_path
    else
      render :new
    end
  end
  private
  def trains_params
    params.require(:train).permit(:line, :station, :min)
  end
end
