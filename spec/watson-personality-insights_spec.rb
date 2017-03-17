require "spec_helper"

RSpec.describe PersonalityInsights do
  let(:base_request_path) { "https://gateway.watsonplatform.net/personality-insights/api" }
  before(:each) do
    allow(ENV).to receive(:[]).with("personality_insights_username").and_return("insights_username")
    allow(ENV).to receive(:[]).with("personality_insights_password").and_return("insights_password")
  end

  it "has a version number" do
    expect(PersonalityInsights::VERSION).not_to be nil
  end

  describe ".base_url" do
    it "return base url for request" do
      expect(subject.base_url).to eq(base_request_path)
    end
  end

  describe ".username" do
    it "return env varibales" do
      expect(subject.username).to eq("insights_username")
    end
  end

  describe ".password" do
    it "return env varibales" do
      expect(subject.password).to eq("insights_password")
    end
  end
end
