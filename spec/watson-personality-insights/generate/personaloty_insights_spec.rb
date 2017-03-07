require 'spec_helper'

describe PersonalityInsights::Generator::PersonalityRequest do
  include PersonalityInsights
  include described_class

  describe "#base_url_request" do
    it "base url should be equal from alchemy language main module" do
      expect(base_url_request).to eq(PersonalityInsights.base_url)
    end
  end

  describe "request methods" do
    before(:each) do
    end

    describe "#rest_client_api" do
      xit "return http request personality" do
      end
    end

    describe "#json_parser" do
      xit "return http request personality" do
      end
    end
  end
end
