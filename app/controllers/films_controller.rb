class FilmsController < ApplicationController
    before_action :client
    before_action :get_films

    def index
    end

    def show
        @film = client.get_film(params[:id])
    end

    private

    def get_films
        @films = client.get_all_films(take: 10)
    end

    def client
        @client = StudioGhibliApi::Client.new
    end
end