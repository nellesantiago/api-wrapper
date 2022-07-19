class HomeController < ApplicationController
    before_action :client

    def index
    end

    def show
    end

    private

    def client
        @client = StudioGhibliApi::Client.new
        @films = client.get_all_films(take: 10)
    end
end