require "spec_helper"

RSpec.describe PersonalityInsights do
  let(:base_request_path) { "https://gateway.watsonplatform.net/personality-insights/api" }

  it "has a version number" do
    expect(PersonalityInsights::VERSION).not_to be nil
  end

  describe ".base_url" do
    it "return base url for request" do
      expect(subject.base_url).to eq(base_request_path)
    end
  end
end
