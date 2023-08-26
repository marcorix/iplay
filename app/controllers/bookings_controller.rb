class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @instrument = Instrument.find(params[:instrument_id])
  end

def create
    instrument = Instrument.find(params[:instrument_id])
    booking = Booking.new(booking_params)
    booking.user = current_user
    booking.instrument = instrument

    if booking.save
      redirect_to dashboard_path
    else
      redirect_to :new, status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to dashboard_path
    else
      render :dashboard
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
