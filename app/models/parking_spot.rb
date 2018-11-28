class ParkingSpot < ApplicationRecord
  belongs_to :level
  belongs_to :spot_size
  has_many :bookings
end
