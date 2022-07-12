RSpec.describe "a random double " do
  it "only allows defined methods to be invoked" do
    # In a double, the first arg is the name of the thign we are referring to
    # the second arg is a hash where the keys are the method names
    # and the values are the mocked return values

    # stunter = double("Dr. Evil", { fall_off_ladder: "ouch", light_on_fire: true })
    # expect(stunter.fall_off_ladder).to eq("ouch")
    # expect(stunter.light_on_fire).to eq(true)

    stunter = double("Dr. Danger")
    allow(stunter).to receive(:fall_off_ladder).and_return("ouch")
    expect(stunter.fall_off_ladder).to eq("ouch")
  end
end
