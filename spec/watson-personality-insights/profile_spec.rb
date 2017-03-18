require 'spec_helper'

describe PersonalityInsights::Profile do
  include PersonalityInsights::MockRequest
  include PersonalityInsights
  subject(:profile) { described_class.new("file") }
  # let(:get_profile) { profile.get_profile(version: '2016-10-20', consumption_preferences: true, raw_scores: true) }

  before(:each) do
    create_fake_http_request(full_path, json_response('get_profile.json'), type: :api)
    @get_profile = profile.get_profile(version: '2016-10-20', consumption_preferences: true, raw_scores: true)
  end

  describe "#add_response_field" do
    it_should_behave_like("add_response_fields",
                          "profile",
                          options = [ "word_count", "processed_language",
                                      "personality", "needs",
                                      "values", "behavior",
                                      "consumption_preferences", "warnings"])
  end
end
