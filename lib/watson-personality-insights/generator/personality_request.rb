module PersonalityInsights
  module Generator
    module PersonalityRequest
      def base_url_request
        "#{PersonalityInsights.base_url}"
      end

      def uri_request_api(request_api_url)
        uri = URI.parse(request_api_url)
        create_request(uri)
      end

      def create_request(uri)
        request = Net::HTTP::Post.new(uri)
        request.basic_auth(@username, @password)
        request.content_type = "application/json"
        request.body = ""
        request.body << File.read(@file).delete("\r\n")
        response(uri, request)
      end

      def response(uri, request)
        req_options = {
          use_ssl: uri.scheme == "https",
        }

        response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
          http.request(request)
        end
        response.body
      end

      def json_parser(url)
        JSON.parse(uri_request_api(base_url_request + "/" + url))
      end
    end
  end
end
