module V1
  class LevelsController < ApplicationController
    before_action :set_level, only: [:show, :update, :destroy]

    def index
      @levels = Level.all
      json_response(@levels)
    end

    def create
      @level = Level.create!(level_params)
      json_response(@level, :created)
    end

    def show
      json_response(@level)
    end

    def update
      @level.update(level_params)
      head :no_content
    end

    def destroy
      @level.destroy
      head :no_content
    end

    private

    def level_params
      params.permit(:number)
    end

    def set_level
      @level = Level.find(params[:id])
    end
  end
end
