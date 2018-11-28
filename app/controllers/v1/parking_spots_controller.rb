module V1
  class ParkingSpotsController < ApplicationController
    before_action :set_parking_spot, only: [:show, :update, :destroy]

    def index
      @parking_spots = ParkingSpot.all
      json_response(@parking_spots)
    end

    def create
      @parking_spot = ParkingSpot.create!(parking_spot_params)
      json_response(@parking_spot, :created)
    end

    def show
      json_response(@parking_spot)
    end

    def update
      @parking_spot.update(parking_spot_params)
      head :no_content
    end

    def destroy
      @parking_spot.destroy
      head :no_content
    end

    private

    def parking_spot_params
      params.permit(:spot_size_id, :level_id, :number, :name)
    end

    def set_parking_spot
      @parking_spot = ParkingSpot.find(params[:id])
    end
  end
end
