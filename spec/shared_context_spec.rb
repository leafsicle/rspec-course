name = "Testing for a shared context"
RSpec.shared_context name do
  before do
    @foods = []
  end

  def help
    5
  end

  let(:something) { [1, 2, 3] }
end

RSpec.describe "example group 1" do
  include_context name

  it "can use outside instance variables " do
    expect(@foods.length).to eq(0)
    @foods << "coffee"
    expect(@foods.length).to eq(1)
  end

  it "can recycle instance vars" do
    expect(@foods.length).to eq(0)
  end
  it "can use a shared method" do
    expect(help).to eq(5)
  end
end
