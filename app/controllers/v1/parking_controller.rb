module V1
  class ParkingController < ApplicationController
    def find_free_parking_spot
      @parking_spot = ParkingSpot.all_by_level_and_size.where('spot_sizes.size >= ?', parking_params[:car_size]).first
      if @parking_spot.present?
        json_response(@parking_spot)
      else
        head :not_found
      end
    end

    private

    def parking_params
      params.permit(:car_size)
    end
  end
end
