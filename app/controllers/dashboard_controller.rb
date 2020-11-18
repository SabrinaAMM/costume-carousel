class DashboardController < ApplicationController
  def index
    @user = policy_scope(User)
    @my_costumes_ids = @user.costumes.map do |costume|
      costume.id
    end
    @received_bookings = Booking.where(costume_id: @my_costumes_ids)
  end
end
