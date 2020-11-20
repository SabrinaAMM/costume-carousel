class Costume < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo, dependent: :destroy
  validates :name, :size, :price_per_day, :category, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

 
  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end