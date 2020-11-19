class BookingsController < ApplicationController
  def new
    find_costume
    @booking = Booking.new
    authorize @booking
  end

  def create
    find_costume
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.costume = @costume
    authorize @booking
    if @booking.save
      flash.notice = "Booking created!"
      redirect_to dashboard_index_path
    else
      render :new
    end
  end

  def edit
    find_costume
    find_booking
    authorize @booking
  end

  def update
    find_booking
    authorize @booking
    if @booking.update(booking_params)
      redirect_to dashboard_index_path
    else
      render :edit
    end
  end

  def destroy
    find_booking
    authorize @booking
    @booking.destroy
    flash.notice = "Booking deleted!"
    redirect_to dashboard_index_path
  end

  def accept
    @booking = Booking.find(params[:booking_id])
    authorize @booking
    @booking.status = "confirmed"
    @booking.save
    flash.notice = "Booking accepted!"
    redirect_to dashboard_index_path
  end

  def reject
    @booking = Booking.find(params[:booking_id])
    authorize @booking
    @booking.status = "rejected"
    @booking.save
    flash.notice = "Booking rejected!"
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
