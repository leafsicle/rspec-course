# Placing the class within the spec file is NOT best practice but
# This is the approach taken by this particular tutorial instead of an import
class Card
  attr_reader :type

  def initialize(type)
    @type = type
  end
end

RSpec.describe "Card" do
  it "has a Suit and value as type" do
    card = Card.new("Ace of Spades")
    expect(card.type).to eq("Ace of Spades")
  end
end
