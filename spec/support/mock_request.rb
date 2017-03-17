module PersonalityInsights
  module MockRequest
    def create_fake_http_request(path, result, options={})
      json_res = result
      uri = URI.parse(path)
      request = Net::HTTP::Post.new(uri)
      allow(URI).to receive(:parse).with(path).and_return(uri)
      allow(Net::HTTP::Post).to receive(:new).and_return(request)
      allow(File).to receive(:read).and_return(result)
      allow(Net::HTTP).to receive(:start).and_return(json_res)
      options[:type] == :json ? json_result(json_res) : api_result(json_res)
    end

    def api_result(json_res)
      allow(json_res).to receive(:body).and_return(json_response('get_profile.json'))
    end

    def json_result(json_res)
      allow(json_res).to receive(:body).and_return(json_response('get_profile.json', json_parse: true))
    end

    def endpoint_path
      "v3/profile?consumption_preferences=true&raw_scores=true&version=2016-10-20"
    end

    def full_path
      path = "https://gateway.watsonplatform.net/personality-insights/api/"
      path << endpoint_path
      path
    end
  end
end
