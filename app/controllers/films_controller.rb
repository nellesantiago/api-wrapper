class FilmsController < ApplicationController
    before_action :client

    def index
        @films = client.get_all_films(take: 10)
    end

    def show
        @film = client.get_film(params[:id])
    end

    private

    def client
        @client = StudioGhibliApi::Client.new
    end
end