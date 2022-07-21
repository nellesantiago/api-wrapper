class CharactersController < ApplicationController
    before_action :client
    
    def index
        @characters = client.get_all_characters(limit: 48)
    end

    def show
        @character = client.get_character(params[:id])
    end

    private

    def client
        @client = StudioGhibliApi::Client.new
    end
end