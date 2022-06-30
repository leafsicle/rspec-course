# Placing the class within the spec file is NOT best practice but
# This is the approach taken by this particular tutorial instead of an import
class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end
end

# RSpec.describe "Card" do
#   it "has a Suit and value as type" do
#     card = Card.new("Ace of Spades")
#     expect(card.type).to eq("Ace of Spades")
#   end
# end
# Becomes This. Referencing the class gives helpers to us!
# Also, splitting to test one aspect of the code is best practice
RSpec.describe Card do
  before do
    @card = Card.new("Ace", "Spades")
  end

  it "has a value" do
    expect(@card.value).to eq("Ace")
  end

  it "has a suit" do
    expect(@card.suit).to eq("Spades")
  end
end
