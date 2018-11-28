class ParkingSpot < ApplicationRecord
  belongs_to :level
  belongs_to :spot_size
  has_many :bookings

  scope :all_by_level_and_size, lambda do
    joins(:levels).joins(:spot_sizes).order('levels.number': :asc, 'spot_sizes.size': :asc)
  end
end
