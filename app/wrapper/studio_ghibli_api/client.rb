module StudioGhibliApi
    class Client
        BASE_URL = "https://ghibliapi.herokuapp.com".freeze

        def get_all_films(params = {})
            send_get_request("/films", params)
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

        private

        def send_get_request(path_to_resource, params={})
            connection = Faraday.new(url: BASE_URL, params: params)
            response = connection.get(path_to_resource)
            JSON.parse(response.body)
        end
    end
end