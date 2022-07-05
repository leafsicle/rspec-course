RSpec.describe "#even? method" do
  context "number is even" do
    it "should return true" do
      expect(4.even?).to eq(true)
    end
  end
  context "Number is odd" do
    it "should return false" do
      expect(5.even?).to eq(false)
    end
  end
end
