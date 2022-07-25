class LocationsController < ApplicationController

    def index
        @client = StudioGhibliApi::Client.new
        @locations = @client.get_all_locations(limit: 24)
        @i = 1
    end

end