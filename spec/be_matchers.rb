RSpec.describe "be matchers" do
  it "can test for overal truthiness" do
    expect(true).to be_truthy
    expect(0).to be_truthy
    expect("").to be_truthy
    expect(2).to be_truthy
  end

  it "can test for overal truthiness" do
    expect(false).to be_falsy
  end

  it "can test for nil" do
    expect(nil).to be_nil

    hashbrowns = { a: 4 }
    expect(hashbrowns[:garlic]).to be_nil
  end
end
