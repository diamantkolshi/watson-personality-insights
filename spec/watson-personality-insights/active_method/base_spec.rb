require 'spec_helper'

describe PersonalityInsights::ActiveMethod::Base do
  include PersonalityInsights
  include PersonalityInsights::MockRequest
  let(:inherited) { PersonalityInsights::Profile }
  subject(:instance_inherited) { inherited.new("file") }

  before(:each) do
    create_fake_http_request(full_path, json_response('get_profile.json'), type: :api)
    @get_profile = instance_inherited.get_profile(version: '2016-10-20', consumption_preferences: true, raw_scores: true)
  end

  describe "#add_response_field" do
    it "instance_inherited class has method called word_count and return result from json_result" do
      is_expected.to respond_to(:word_count)
    end

    it "word_count method return hash from json_result['word_count']" do
      expect(instance_inherited.word_count).to eq(15223)
    end
  end

  describe "#params_addressable" do
    it "hash value convert to addressable" do
      expect(instance_inherited.params_addressable).to eq("consumption_preferences=true&raw_scores=true&version=2016-10-20")
    end
  end

  describe "#request" do
    it "return all json result" do
      expect(instance_inherited.request).to eq(json_response('get_profile.json', json_parse: true))
    end
  end

  describe "#get_profile" do
    it "get result profile" do
      expect(@get_profile).to eq(json_response('get_profile.json', json_parse: true))
    end
  end
end
