module V1
  class SpotSizesController < ApplicationController
    before_action :set_spot_size, only: [:show, :update, :destroy]

    def index
      @spot_sizes = SpotSize.all
      json_response(@spot_sizes)
    end

    def create
      @spot_size = SpotSize.create!(spot_size_params)
      json_response(@spot_size, :created)
    end

    def show
      json_response(@spot_size)
    end

    def update
      @spot_size.update(spot_size_params)
      head :no_content
    end

    def destroy
      @spot_size.destroy
      head :no_content
    end

    private

    def spot_size_params
      params.permit(:size)
    end

    def set_spot_size
      @spot_size = SpotSize.find(params[:id])
    end
  end
end
