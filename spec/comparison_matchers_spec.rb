RSpec.describe "comparison matchers" do
  it "allows for comparison with built-in Ruby operators" do
    expect(10).to be > 4
    expect(10).to be < 42
  end

  describe 100 do
    it { is_expected.to be > 90 }
    it { is_expected.to be >= 100 }
    it { is_expected.to be < 1000 }
  end
end
