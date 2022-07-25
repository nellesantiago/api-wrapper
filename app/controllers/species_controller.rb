class SpeciesController < ApplicationController

    def index
        @client = StudioGhibliApi::Client.new
        @all_species = @client.get_all_species(limit: 6)
    end

end