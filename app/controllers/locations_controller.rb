class LocationsController < ApplicationController
    before_action :client

    def index
        @locations = client.get_all_locations(limit: 24)
        @i = 1
    end

    def show
        @location = client.get_location(params[:id])
    end

    private

    def client
        @client = StudioGhibliApi::Client.new
    end
end