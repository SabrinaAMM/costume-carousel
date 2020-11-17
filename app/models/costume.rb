class Costume < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, :size, :price_per_day, :category, presence: true
end
