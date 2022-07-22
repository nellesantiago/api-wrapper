module StudioGhibliApi
    class Client
        BASE_URL = "https://ghibliapi.herokuapp.com".freeze

        def get_all_films
            send_get_request("/films")
        end

        def get_film(id)
            send_get_request("/films/#{id}")
        end

        def get_all_characters(params = {})
            send_get_request("/people", params)
        end

        def get_character(id)
            send_get_request("/people/#{id}")
        end

        def get_all_locations(params = {})
            send_get_request("/locations", params)
        end

        def get_location(id)
            send_get_request("/locations/#{id}")
        end

        def get_all_species
            send_get_request("/species")
        end

        def get_species(id)
            send_get_request("/species/#{id}")
        end

        private

        def send_get_request(path_to_resource, params={})
            connection = Faraday.new(url: BASE_URL, params: params)
            response = connection.get(path_to_resource)
            JSON.parse(response.body)
        end
    end
end