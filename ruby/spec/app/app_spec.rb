# frozen_string_literal: true

describe GitLabCITest::App do
  subject(:app) { described_class.new }

  let(:lhs) { 1 }
  let(:rhs) { 2 }

  describe "#add" do
    it "returns the addition of it's parameters" do
      result = app.add(lhs, rhs)

      expect(result).to eq(3)
    end
  end
end
