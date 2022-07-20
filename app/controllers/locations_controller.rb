class LocationsController < ApplicationController
    before_action :client

    def index
        @locations = client.get_all_locations
    end

    def show
        @location = client.get_location(params[:id])
    end

    private

    def client
        @client = StudioGhibliApi::Client.new
    end
end