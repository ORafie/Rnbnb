class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @bookings = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:title, :description, :price, :capacity) #capacity replaces beds + rooms
  end
end
