def linear_search(arr, target)
  arr.each_with_index do |element, index|
    return index if element == target
  end
  nil  # Not found
end

arr = [4, 2, 7, 1, 9, 3]
target = 7
result = linear_search(arr, target)
puts result.nil? ? "Not found" : "Found at index #{result}"


# Data Structure: Array, Linked List
# Time Complexity: O(n)
# Case: Unsorted data or when no assumptions about the data distribution are made.