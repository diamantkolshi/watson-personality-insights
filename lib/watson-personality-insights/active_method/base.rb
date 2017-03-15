module PersonalityInsights
  module ActiveMethod
    class Base < ActiveMethod::Extra
      include PersonalityInsights::Generator::PersonalityRequest
      attr_accessor :username, :password, :json_result, :options, :file

      def initialize(file)
        @file = file
        @username = PersonalityInsights.username
        @password = PersonalityInsights.password
      end

      def get_profile(options={})
        @options = options
        @json_result = request
      end

      def request
        json_parser(endpoint)
      end

      def params_addressable
        uri = Addressable::URI.new
        uri.query_values = @options
        uri.query
      end
    end
  end
end
