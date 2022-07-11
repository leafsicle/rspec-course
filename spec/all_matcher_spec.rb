RSpec.describe "All Matching" do
  it "allows for aggregate checking" do
    expect([5, 7, 9]).to all be_odd
    expect([2, 4, 8]).to all be_even
    expect([[], [], []]).to all be_empty
    expect([3, 4, 6]).to all(be < 10)
  end

  describe [5, 7, 9] do
    it { is_expected.to all be_odd }
  end
end
