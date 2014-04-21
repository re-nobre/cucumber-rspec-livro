class Stack
  def initialize
    @elements = []
  end

  def push(element)
    @elements << element
  end

  def pop
    @elements.delete_at(-1)
  end

  def top
    @elements[-1]
  end

  def size
    @elements.size
  end
end


describe Stack do
  describe "#push" do
    it "puts an element at the top of stack" do
      stack = Stack.new

      stack.push(1)
      stack.push(2)

      expect(stack.top).to eq(2)
    end
  end

  describe "#pop" do
    it "pop an element at the top of stack" do
      stack = Stack.new

      stack.push(1)
      stack.pop

      expect(stack.size()).to eq(0)
    end
  end
end
