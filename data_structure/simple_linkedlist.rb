class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current = @head
      while current.next
        current = current.next
      end
      current.next = Node.new(data)
    end
  end

  def prepend(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
  end

  def display
    current = @head
    while current
      print "#{current.data} -> "
      current = current.next
    end
    print "nil\n"
  end
end

# Example usage:
list = LinkedList.new
list.append(1)
list.append(2)
list.prepend(0)
list.display
