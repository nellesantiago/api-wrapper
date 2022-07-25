class SpeciesController < ApplicationController
    before_action :client

    def index
        @all_species = client.get_all_species(limit: 6)
    end

    def show
        @species = client.get_species(params[:id])
    end

    private

    def client
        @client = StudioGhibliApi::Client.new
    end
end