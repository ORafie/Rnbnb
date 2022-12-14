class FlatsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "address ILIKE :query OR title ILIKE :query"
      @flats = Flat.where(sql_query, query: "%#{params[:query]}%")
    else
      @flats = Flat.all
    end

    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window: render_to_string(partial: "info_window", locals: { flat: flat }),
        image_url: helpers.asset_url("briefcase.png")
      }
    end
  end

  def home
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
    @markers = [{
      lat: @flat.latitude,
      lng: @flat.longitude,
      image_url: helpers.asset_url("briefcase.png")
    }]
  end

  # def search
  # end

  private

  def flat_params
    params.require(:flat).permit(:title, :flat_type, :description, :price, :capacity, :address, :photo) #capacity replaces beds + rooms
  end
end
