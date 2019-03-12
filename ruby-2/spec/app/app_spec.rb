# frozen_string_literal: true

describe BuildkiteTest::App do
  subject(:app) { described_class.new }

  let(:lhs) { 2 }
  let(:rhs) { 3 }

  describe "#add" do
    it "returns the addition of it's parameters" do
      result = app.add(lhs, rhs)

      expect(result).to eq(5)
    end
  end

  describe "#multiplication" do
    it "returns the multiplication of it's parameters" do
      result = app.multiply(lhs, rhs)

      expect(result).to eq(6)
    end
  end
end
