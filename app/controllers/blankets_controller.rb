class BlanketsController < ApplicationController

  def index
    @blankets = Blanket.all
  end

  def show
    @blanket = Blanket.find(params[:id])
  end



  private

  def blanket_params
    params.require(:blanket).permit(:name, :color, :fabric, :weight)
  end


end
