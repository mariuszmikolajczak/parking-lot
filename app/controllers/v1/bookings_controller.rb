module V1
  class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :update, :destroy]

    def index
      @bookings = Booking.all
      json_response(@bookings)
    end

    def create
      @booking = Booking.create!(parking_spot_params)
      json_response(@booking, :created)
    end

    def show
      json_response(@booking)
    end

    def update
      @booking.update(parking_spot_params)
      head :no_content
    end

    def destroy
      @booking.destroy
      head :no_content
    end

    private

    def booking_params
      params.permit(:spot_size_id, :level_id, :number, :name)
    end

    def set_booking
      @booking = Booking.find(params[:id])
    end
  end
end
