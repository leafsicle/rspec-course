RSpec.describe Hash do
  subject(:bob) do
    { a: 1, b: 2 }
  end
  it "has 2 K:V pairs" do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end
  context "nested ex" do
    it "has to kv pairs" do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end
