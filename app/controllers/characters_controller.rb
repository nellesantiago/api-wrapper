class CharactersController < ApplicationController  

    def index
        @client = StudioGhibliApi::Client.new
        @characters = @client.get_all_characters(limit: 48)
    end

end