require_relative "watson-personality-insights/version"
require 'json'
require "addressable/uri"
require 'net/http'
require 'uri'

module PersonalityInsights
  class << self
    def base_url
      "https://gateway.watsonplatform.net/personality-insights/api"
    end

    def username
      ENV['personality_insights_username']
    end

    def password
      ENV['personality_insights_password']
    end
  end
end

require_relative "watson-personality-insights/generator/personality_request.rb"
require_relative "watson-personality-insights/active_method/extra.rb"
require_relative "watson-personality-insights/active_method/base.rb"
require_relative "watson-personality-insights/profile.rb"
