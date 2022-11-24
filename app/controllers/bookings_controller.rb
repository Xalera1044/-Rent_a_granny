class BookingsController < ApplicationController
  before_action :set_booking, only: [ :show ]
  before_action :set_granny, only: [ :new, :create ]
  def new
    @booking = Booking.new
  end

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.granny = @granny
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      redirect_to grannies_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:message, :occurs_on)
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def set_granny
    @granny = Granny.find(params[:granny_id])
  end
end
