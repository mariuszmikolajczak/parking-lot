module V1
  class ParkingController < ApplicationController
    def find_free_parking_spot
      @parking_spot = ParkingSpot.all_by_level_and_size.where('spot_sizes.size >= ?', parking_params[:car_size]).first
      json_response(@parking_spot)
    end

    private

    def parking_params
      params.permit(:car_size)
    end
  end
end
