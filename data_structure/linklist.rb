# User write a program in ruby 
# You are given the heads of two sorted linked lists list1 and list2.
# Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.
# Return the head of the merged linked list.

# Example 1:

# Input: list1 = [1,2,4], list2 = [1,3,4]Output: [1,1,2,3,4,4]
# Example 2:

# Input: list1 = [], list2 = []Output: []
# Example 3:

# Input: list1 = [], list2 = [0]Output: [0]

class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def merge_two_lists(list1, list2)
  dummy_head = ListNode.new
  current = dummy_head
  
  while list1 && list2
    if list1.val <= list2.val
      current.next = list1
      list1 = list1.next
    else
      current.next = list2
      list2 = list2.next
    end
    current = current.next
  end
  
  current.next = list1 || list2
  
  dummy_head.next
end

# Helper function to create a linked list from an array
def array_to_linked_list(arr)
  return nil if arr.empty?
  head = ListNode.new(arr[0])
  current = head
  (1...arr.length).each do |i|
    current.next = ListNode.new(arr[i])
    current = current.next
  end
  head
end

# Helper function to convert linked list to array
def linked_list_to_array(head)
  result = []
  current = head
  while current
    result << current.val
    current = current.next
  end
  result
end

# Example usage
list1 = array_to_linked_list([1, 2, 4])
list2 = array_to_linked_list([1, 3, 4])

merged_list = merge_two_lists(list1, list2)
puts linked_list_to_array(merged_list)  # Output: [1, 1, 2, 3, 4, 4]
