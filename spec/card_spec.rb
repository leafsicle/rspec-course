# Placing the class within the spec file is NOT best practice but
# This is the approach taken by this particular tutorial instead of an import
class Card
end

# Start with an invocation spell for our test Class of a card
# The inscription should read as the description of what the
# idea of a card has as properites and behaviors
RSpec.describe "Card" do
  # We can use the 'it' or 'specify' keyword to postulate what the thing is
  # that we are looking for.
  it "has a Suit and value as type" do
    # assign and invoke the class with the argument we want to test against
    card = Card.new("Ace of Spades")

    # expect is a method that we can use to act as the 'answer sheet'
    # I expect that the card we are testing will have a type equal to
    # Ace of Spades
    expect(card.type).to eq("Ace of Spades")
  end
end
