class BlanketsController < ApplicationController

  def index
    @blankets = Blanket.all
  end

  def show
    @blanket = Blanket.find(params[:id])
  end

  def new
    @blanket = Blanket.new
  end

  def create
    @blanket = Blanket.new(blanket_params)
    if @blanket.save
      flash[:notice] = "Blanket was successfully created"
      redirect_to blankets_path
    else
      render :new
    end
  end


  private

  def blanket_params
    params.require(:blanket).permit(:name, :color, :fabric, :weight)
  end


end
