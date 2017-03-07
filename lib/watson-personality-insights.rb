require "watson-personality-insights/version"

module PersonalityInsights
  class << self
    def base_url
      "https://gateway.watsonplatform.net/personality-insights/api"
    end

    def username
    end

    def password
    end
  end
end

require_relative "watson-personality-insights/active_method/extra.rb"