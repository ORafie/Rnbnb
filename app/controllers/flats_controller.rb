class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to @flat, notice: 'Flat was successfully created.'
    else
      render :new
    end
  end

  def show
    @flat = Flat.find(params[:id])
  end

  # def search
  # end

  private

  def flat_params
    params.require(:flat).permit(:title, :description, :price, :capacity) #capacity replaces beds + rooms
  end
end
