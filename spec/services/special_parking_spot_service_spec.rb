require 'rails_helper'

RSpec.describe SpecialParkingSpotService do

  let(:dodge) { OpenStruct.new(brand: 'Dodge', size: 15, price: 50) }
  let(:jaguar) { OpenStruct.new(brand: 'Jaguar', size: 45, price: 170) }
  let(:mercedes) { OpenStruct.new(brand: 'Mercedes', size: 10, price: 100) }
  let(:audi) { OpenStruct.new(brand: 'Audi', size: 20, price: 30) }
  let(:cars) { [dodge, jaguar, mercedes, audi] }

  subject { SpecialParkingSpotService.new(cars) }

  describe '#max_profit' do
    it 'should pass this test' do
      expect(subject.max_profit.collect(&:brand).sort).to eq([dodge, mercedes, audi].collect(&:brand).sort)
    end
  end

  # it 'should return parking spot' do
  #   post :find_free_parking_spot, params: { car_size: 20 }
  #
  #   expect(response.body).to eq(parking_spot2.to_json)
  # end
end
