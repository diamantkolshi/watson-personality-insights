module PersonalityInsights
  module ActiveMethod
    class Extra
      def self.add_response_field(name)
        define_method(name) do
          require 'pry';binding.pry
          @json_result[name.to_s]
        end
      end

      def result
        @json_result
      end
    end
  end
end