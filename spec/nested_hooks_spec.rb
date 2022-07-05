RSpec.describe "nested Hooks" do
  before(:context) do
    puts "OUTER before context"
  end

  before(:example) do
    puts "OUTER before example!"
  end

  it "does basic math" do
    expect(1 + 41).to eq(42)
  end

  context "with condition A" do
    before(:context) do
      puts "INNER before context"
    end

    before(:example) do
      puts "INNER before example!"
    end

    it "does more stuff" do
      expect(1 + 2).to eq(3)
    end
    it "tea and cake?" do
      expect(5 - 2).to eq(3)
    end
  end
end
