RSpec.describe Array do
  it "array should be hollow" do
    expect(subject.length).to eq(0)
    subject << "el"
    expect(subject.length).to eq(1)
  end
end
