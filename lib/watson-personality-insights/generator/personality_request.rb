module PersonalityInsights
  module Generator
    module PersonalityRequest
      def base_url_request
        "#{PersonalityInsights.base_url}"
      end

      def rest_client_api(request_api_url)
        RestClient::Request.execute(
          url: request_api_url,
          user: @username,
          password: @password
        )
      end

      def json_parser(url)
        JSON.parse(rest_client_api(base_url_request + "/" + url))
      end
    end
  end
end
