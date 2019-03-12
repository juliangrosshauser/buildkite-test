# frozen_string_literal: true

describe BuildkiteTest::App do
  subject(:app) { described_class.new }

  let(:lhs) { 6 }
  let(:rhs) { 2 }

  describe "#subtract" do
    it "returns the subtraction of it's parameters" do
      result = app.subtract(lhs, rhs)

      expect(result).to eq(4)
    end
  end

  describe "#divide" do
    it "returns the subtraction of it's parameters" do
      result = app.divide(lhs, rhs)

      expect(result).to eq(3)
    end
  end
end
