RSpec.describe "raise_error matcher" do
  def methodman
    x
  end

  class CustomError < StandardError; end

  it "can check for any type of error" do
    expect { methodman }.to raise_error
  end
  it "can check for specific errors" do
    expect { methodman }.to raise_error(NameError)
    expect { 3 / 0 }.to raise_error(ZeroDivisionError)
  end
  it "can check for custom errors" do
    expect { raise CustomError }.to raise_error(CustomError)
  end
end
