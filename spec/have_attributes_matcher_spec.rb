class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe "have_attributes matcher" do
  describe ProfessionalWrestler.new("Rock", "Rock Bottom") do
    it "checks for object attr and proper vals" do
      expect(subject).to have_attributes(name: "Rock")
      expect(subject).to have_attributes(finishing_move: "Rock Bottom")
    end
    it { is_expected.to have_attributes(name: "Rock", finishing_move: "Rock Bottom") }
  end
end
