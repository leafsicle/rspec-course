RSpec.describe "start_with and end_with matching!" do
  describe "Caterpillar" do
    it "should check for a substring at the beginning or end" do
      expect(subject).to start_with("Cat")
    end
    it { is_expected.to start_with("Cat") }
    it { is_expected.to end_with("aterpillar") }
  end

  describe [:a, :b, :c, :d] do
    it "should check for elements at begin or end of arr" do
      expect(subject).to start_with(:a)
      expect(subject).to end_with(:d)
    end
  end
end
