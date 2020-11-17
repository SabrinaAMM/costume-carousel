class DashboardController < ApplicationController
  def index
    @user = current_user
    # @user_costumes = @user.costumes
    # @user_costume_ids = []
    # @user_costumes.each do |costume|
    #   @user_costume_ids << costume.id
    # end

    # @received_bookings = Booking.where(@user_costume_ids.include(costume_id))
  end
end
