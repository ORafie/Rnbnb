class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update]

  def user_bookings
    @bookings = Booking.where(user_id: current_user)
  end

  def new
    @booking = Booking.new
    @flat = Flat.find(params[:flat_id])
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
  end

  def create
    @booking = Booking.new(booking_params)
    @flat = Flat.find(params[:flat_id])
    @booking.user = current_user
    @booking.flat = @flat

    if @booking.save
      redirect_to @booking, notice: 'Your booking was successfully created.'
    else
      render :new, status: :unprocessable_entity
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
