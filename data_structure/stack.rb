class Stack
  def initialize
    @stack = []
  end

  def push(element)
    @stack.push(element)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def size
    @stack.size
  end

  def empty?
    @stack.empty?
  end
end

stack  = Stack.new

stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)

stack.size
stack.peek

stack.pop
stack.pop
stack.pop
stack.pop

stack.empty?
