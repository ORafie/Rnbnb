class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update]

  def new
    @booking = Booking.new
  end

  def show
  end

  def edit
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to @booking, notice: 'Your booking was successfully created.'
    else
      render :new
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Your booking was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
