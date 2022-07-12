class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "line?"
  end

  def fall_off_ladder
    "no"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      puts actor.act
      puts actor.fall_off_ladder
      puts actor.light_on_fire
      puts actor.act
    end
  end
end

# actor = Actor.new("Matt Damon")
# movie = Movie.new(actor)
# movie.start_shooting
RSpec.describe Movie do
  let(:stunter) { double("Dr. Danger", { ready?: true, act: "a string", fall_off_ladder: "yep", light_on_fire: false }) }
  subject { described_class.new(stunter) }
  describe "#start_shooting method" do
    it "expects an actor to do 3 actions" do
      # expect(stunter).to receive(:ready?)
      # expect(stunter).to receive(:act)
      # expect(stunter).to receive(:fall_off_ladder)
      # expect(stunter).to receive(:light_on_fire)

      # expect(stunter).to receive(:light_on_fire).once
      expect(stunter).to receive(:light_on_fire).exactly(1).times
      expect(stunter).to receive(:light_on_fire).at_most(1).times
      subject.start_shooting
    end
  end
end
