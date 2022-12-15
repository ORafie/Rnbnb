class FlatsController < ApplicationController
  def index
    @flats = Flat.all
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window: render_to_string(partial: "info_window", locals: { flat: flat }),
        image_url: helpers.asset_url("luggage.png")
      }
    end
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user_id = current_user.id
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
    params.require(:flat).permit(:title, :flat_type, :description, :price, :capacity, :address, :rating) #capacity replaces beds + rooms
  end
end
