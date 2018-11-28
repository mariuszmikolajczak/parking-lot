require 'rails_helper'

RSpec.describe V1::ParkingController, type: :controller do
  let!(:level0) { Level.create!(number: 0) }
  let!(:level1) { Level.create!(number: 1) }
  let!(:spot_size10) { SpotSize.create!(size: 10)}
  let!(:spot_size20) { SpotSize.create!(size: 20)}
  let!(:parking_spot1) { ParkingSpot.create!(spot_size: spot_size10, level: level0, number: 1, name: "ParkingSlot1")}
  let!(:parking_spot2) { ParkingSpot.create!(spot_size: spot_size20, level: level0, number: 2, name: "ParkingSlot2")}
  let!(:parking_spot3) { ParkingSpot.create!(spot_size: spot_size20, level: level1, number: 3, name: "ParkingSlot3")}

  # Just simple test if it works without FactoryBot
  it 'should return parking spot' do
    post :find_free_parking_spot, params: { car_size: 20 }

    expect(response.body).to eq(parking_spot2.to_json)
  end
end
