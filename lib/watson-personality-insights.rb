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
      "4bdf89cf-d763-4309-bb43-5f45422a37c8"
    end

    def password
      "zJhqNq8P74wW"
    end
  end
end

require_relative "watson-personality-insights/generator/personality_request.rb"
require_relative "watson-personality-insights/active_method/extra.rb"
require_relative "watson-personality-insights/active_method/base.rb"
require_relative "watson-personality-insights/profile.rb"

# obj = PersonalityInsights::Profile.new("../profile.json")
# obj.get_profile( 
#     version: '2016-10-20',
#     consumption_preferences: true,
#     raw_scores: true
#   )
# puts obj.result