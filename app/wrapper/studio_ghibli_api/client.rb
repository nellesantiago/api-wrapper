module StudioGhibliApi
    class Client
        BASE_URL = "https://ghibliapi.herokuapp.com".freeze

        private

        def send_request(http_method, path_to_resource, params={}, headers={})
            connection = Faraday.new(url: BASE_URL, params: params, headers: headers)
            response = connection.public_send(http_method, path_to_resource)
            JSON.parse(response.body)
        end
    end
end