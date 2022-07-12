RSpec.describe "satisfies matcher" do
  subject { "racecar" } 
  it "is a palindrome" do
    expect(subject).to satisfy { |val| val == 'racecar'}
  end
  
end
