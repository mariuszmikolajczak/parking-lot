class ParkingSpot < ApplicationRecord
  belongs_to :level
  belongs_to :spot_size
  has_many :bookings

  scope :all_by_level_and_size, lambda {
    joins(:level).joins(:spot_size).order('levels.number asc', 'spot_sizes.size asc')
  }
end
