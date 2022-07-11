RSpec.describe "Using predicate methods and matchers" do
  describe "methods:" do
    it "can be tested with plain Ruby methods" do
      result = 20 / 2
      expect(result.even?).to eq(true)
    end
  end

  describe "matching:" do
    it "can be tested with predicate matchers, too!" do
      expect(4 / 2).to be_even
      expect([]).to be_empty
      expect(0).to be_zero
    end
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end
