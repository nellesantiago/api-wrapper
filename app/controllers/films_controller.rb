class FilmsController < ApplicationController

    def index
        @client = StudioGhibliApi::Client.new
        @films = @client.get_all_films
    end

end