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
    @booking.granny = Granny.find(params[:granny_id])
    @booking.user = current_user
    @booking.confirm = "pending"
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.confirm = "accepted"
    @booking.save
    redirect_to edit_granny_booking_path
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.confirm = "rejected"
    @booking.save
    redirect_to edit_granny_booking_path
  end

  private




  def booking_params
    params.require(:booking).permit(:message, :occurs_on, :confirm)
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def set_granny
    @granny = Granny.find(params[:granny_id])
  end
end
