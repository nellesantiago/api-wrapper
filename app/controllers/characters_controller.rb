class CharactersController < ApplicationController
    def index
        @characters = client.get_all_characters(take: 10)
    end

    private

    def client
        @client = StudioGhibliApi::Client.new
    end
end