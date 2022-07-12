RSpec.describe 25 do
  it "can test for multiple matchers" do
    expect(subject).to be_odd.and be>20

  end 
end
 RSpec.describe "caterpillar"do 
  it "should match on multiple predicate methods" do
    expect(subject).to start_with("cater").and end_with("pillar")
  end

  it { is_expected.to start_with("cat").and end_with("r")  } 
end

RSpec.describe [:coffee, :tea, :water] do
  it "should allow for mult possibil" do
    
    expect(subject.sample).to eq(:coffee).or eq(:tea).or eq(:water)
  end
  
end