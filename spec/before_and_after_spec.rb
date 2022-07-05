RSpec.describe "before and after hooks!" do
  before(:example) do
    puts "b4 example"
  end
  after(:example) do
    puts "after"
  end
  before(:context) do
    puts "π context"
  end
  after(:context) do
    puts "after context"
  end
  context "a context" do
    it "is random example 1" do
      expect(5 * 4).to eq(20)
    end
    it "is random example 2" do
      expect(3 - 1).to eq(2)
    end
  end
end
