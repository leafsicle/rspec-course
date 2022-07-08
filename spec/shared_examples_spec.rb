test_name = "a Ruby obj with len == 3"
RSpec.shared_examples test_name do
  it "returns the number of items" do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples test_name
end

RSpec.describe String do
  subject { "abc" }
  include_examples test_name
end

RSpec.describe Hash do
  subject { { a: 1, b: 2, c: 3 } }
  include_examples test_name
end

class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  subject { described_class.new }
  include_examples test_name
end
