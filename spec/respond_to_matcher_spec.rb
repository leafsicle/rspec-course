class Tea
  def drink
    "damn fine"
  end

  def discard
    "sadness"
  end

  def purchase(number)
    "#{number} more tea please!"
  end
end

RSpec.describe Tea do
  it "confirms that an object can respond to a method." do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard)
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end

  it "confirms that an obj responds to methods with args" do
    expect(subject).to respond_to(:purchase)
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it { is_expected.to respond_to(:purchase, :discard) }
  it { is_expected.to respond_to(:purchase).with(1).arguments }
end
