module PersonalityInsights
  class Profile < ActiveMethod::Base
    add_response_field :word_count
    add_response_field :processed_language
    add_response_field :personality
    add_response_field :needs
    add_response_field :values
    add_response_field :behavior
    add_response_field :consumption_preferences
    add_response_field :warnings

    def endpoint
      url = "v3/profile?"
      url << "#{params_addressable}" unless params_addressable.empty?
      url
    end
  end
end
