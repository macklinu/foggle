require "spec_helper"

describe Foggle::Toggle do
  context "when feature environment variable is enabled" do
    around(:example) do |example|
      ClimateControl.modify(FEATURE_COOL_STUFF: "true") { example.run }
    end
    it "enabled? returns true" do
      expect(enabled?(:cool_stuff)).to eq(true)
    end
    it "feature? returns true" do
      expect(feature?(:cool_stuff)).to eq(true)
    end
  end
  context "when feature environment variable is disabled" do
    around(:example) do |example|
      ClimateControl.modify(FEATURE_COOL_STUFF: "false") { example.run }
    end
    it "enabled? returns false" do
      expect(enabled?(:cool_stuff)).to eq(false)
    end
    it "feature? returns false" do
      expect(feature?(:cool_stuff)).to eq(false)
    end
  end
  context "when feature environment variable does not exist" do
    it "enabled? returns false" do
      expect(enabled?(:not_present)).to eq(false)
    end
    it "feature? returns false" do
      expect(feature?(:not_present)).to eq(false)
    end
  end
  context "when passed a String" do
    around(:example) do |example|
      ClimateControl.modify(FEATURE_COOL_STUFF: "true") { example.run }
    end
    it "enabled? returns true" do
      expect(enabled?("cool_stuff")).to eq(true)
    end
    it "feature? returns true" do
      expect(feature?("cool_stuff")).to eq(true)
    end
  end
end
