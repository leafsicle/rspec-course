RSpec.describe "not_to method" do
  it "checks for the inverse of a matcher" do
    expect(3).not_to eq(34)
    expect(3).not_to be_even

    expect(nil).not_to be_truthy
    expect(5).not_to respond_to(:flapjacks)
    expect{11/3}.not_to raise_error
  end
end