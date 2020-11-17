class BookingsController < ApplicationController
  def new
    find_costume
    @booking = Booking.new
  end

  def create
    find_costume
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.costume = @costume
    if @booking.save
      redirect_to dashboard_index_path
    else
      render :new
    end
  end

  def edit
    find_costume
    find_booking
  end

  def update
    find_booking
    if @booking.update(booking_params)
      redirect_to dashboard_index_path
    else
      render :edit
    end
  end

  def destroy
    find_booking
    @booking.destroy
    redirect_to dashboard_index_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

  def find_costume
    @costume = Costume.find(params[:costume_id])
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
