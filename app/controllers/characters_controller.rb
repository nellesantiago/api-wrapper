class CharactersController < ApplicationController
    def index
        @characters = client.get_all_characters
    end

    def show
        @character = client.get_character(params[:id])
    end

    private

    def client
        @client = StudioGhibliApi::Client.new
    end
end