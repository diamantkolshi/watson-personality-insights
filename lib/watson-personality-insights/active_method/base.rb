module PersonalityInsights
  module ActiveMethod
    class Base < ActiveMethod::Extra
      include PersonalityInsights::Generators::LanguageRequest
      attr_accessor :json_result

      def initialize
      end

      def request
      end
    end
  end
end
