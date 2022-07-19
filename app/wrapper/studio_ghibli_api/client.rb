module StudioGhibliApi
    class Client
        BASE_URL = "https://ghibliapi.herokuapp.com".freeze

        def get_all_films(params = {})
            send_request("/films", params)
        end

        private

        def send_request(path_to_resource, params={})
            connection = Faraday.new(url: BASE_URL, params: params)
            response = connection.get(path_to_resource)
            JSON.parse(response.body)
        end
    end
end