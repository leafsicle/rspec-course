RSpec.describe Array do
  subject(:sally) { ["a", "b"] }

  it "array has length" do
    expect(sally.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it "just making sure Sally hasn't lost themself" do
    expect(sally).to eq(["a", "b"])
  end
end
