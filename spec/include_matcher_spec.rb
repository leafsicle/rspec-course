RSpec.describe "include matcher" do
  describe("hot chocolate") do
    it "checks for sub-string inclusion" do
      expect(subject).to include("hot")
      expect(subject).to include("choc")
      expect(subject).to include("late")
    end
    it { is_expected.to include("choc") }
  end
  describe([10, 20, 30]) do
    it "checks for inclusion in the array regardless of order" do
      expect(subject).to include(10)
      expect(subject).to include(10, 20)
      expect(subject).to include(10, 30)
    end
    it { is_expected.to include(20) }
  end

  describe({ a: 2, b: 4 }) do
    it("can check if a key exists") do
      expect(subject).to include(a: 2)
      expect(subject).to include(:b, :a)
      expect(subject).to include(:a, :b)
    end
    it { is_expected.to include(:a) }
    # it "can check for K-V pairs too" do
  end
end
