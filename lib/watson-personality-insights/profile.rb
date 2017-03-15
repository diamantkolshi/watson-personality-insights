module PersonalityInsights
  class Profile < ActiveMethod::Base
  	add_response_field :word_count
  	add_response_field :processed_language
  	add_response_field :personality

    def endpoint
      url = "v3/profile?"
      url << "#{params_addressable}" unless params_addressable.empty?
      url
    end
  end
end
