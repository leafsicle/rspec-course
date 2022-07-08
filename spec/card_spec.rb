# Placing the class within the spec file is NOT best practice but
# This is the approach taken by this particular tutorial instead of an import
class Card
  attr_accessor :value, :suit

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
# RSpec.describe Card do
#   before do
#     @card = Card.new("Ace", "Spades")
#   end

#   it "has a value" do
#     expect(@card.value).to eq("Ace")
#   end

#   it "has a suit" do
#     expect(@card.suit).to eq("Spades")
#   end
# end
RSpec.describe Card do
  # before do
  #   @card = Card.new("Ace", "Spades")
  # end
  # it "has a value" do
  #   expect(@card.value).to eq("Ace")
  # end

  # it "has a suit" do
  #   expect(@card.suit).to eq("Spades")
  # end
  # this can be refactored to provided the same instance of the class
  # in place of createing a new instanced EACH time an example is run in a group
  # def card
  #   Card.new("Ace", "Spades")
  # end
  # Instead of the above, we use memoization to store the value in the symbol of :card
  let(:card) { Card.new("Ace", "Spades") }
  it "has a value" do
    expect(card.value).to eq("Ace")
    card.value = "Queen"
    expect(card.value).to eq("Queen")
  end

  it "has a custom error message" do
    comparison = "Spades"
    expect(card.suit).to eq(comparison), "Yo yo yo, I expected #{card.suit} to equal #{comparison}"
  end
end
