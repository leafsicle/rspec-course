RSpec.describe "allow method review" do
  it "can customize return value for methods on doubles" do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)
    # overwriting return method
    expect(calculator.add).to eq(15)
    expect(calculator.add(3)).to eq(15)
    expect(calculator.add(92, 4)).to eq(15)
    expect(calculator.add("str")).to eq(15)
  end
  it "can stub one or more mthods on a real object" do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(10)
    expect(arr.sum).to eq(10)
    arr.push(4)
    expect(arr).to eq([1, 2, 3, 4])
  end
end
