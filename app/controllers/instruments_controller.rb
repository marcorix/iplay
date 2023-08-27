class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
      @markers = @instruments.geocoded.map do |instrument|
        {
          lat: instrument.latitude,
          lng: instrument.longitude,
          info_window_html: render_to_string(partial: "info_window", locals: {instrument: instrument})
        }
      end
  end

  def new
    @instrument = Instrument.new
  end

  def show
    @instrument = Instrument.find(params[:id])
    @booking = Booking.new
    @reviews = Review.where(instrument: @instrument)
    @review = Review.new
  end

  def create
    instrument = Instrument.new(instruments_params)
    instrument.user = current_user

    if instrument.save
      redirect_to instruments_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def instruments_params
    params.require(:instrument).permit(:product_name, :price, :category, :location, :img_url, :photo)
  end
end
