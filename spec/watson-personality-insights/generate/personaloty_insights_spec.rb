require 'spec_helper'

describe PersonalityInsights::Generator::PersonalityRequest do
  include PersonalityInsights
  include described_class
  subject(:personality) { described_class }

  describe "#base_url_request" do
    it "base url should be equal from alchemy language main module" do
      expect(base_url_request).to eq(PersonalityInsights.base_url)
    end
  end

  describe "request methods" do
    before(:each) do
      create_fake_http_request(full_path, json_response('get_profile.json'), type: type)
    end

    describe "create http request with path" do
      let(:type) { :json }
      it "result should equal with profile json result" do
        expect(uri_request_api(full_path)).to eq(json_response('get_profile.json', json_parse: true))
      end
    end

    describe "#json_parser" do
      let(:type) { :api }
      it "return json file to convert to json ruby valid" do                
        expect(json_parser(endpoint_path)).to eq(json_response('get_profile.json', json_parse: true))
      end
    end
  end
end
