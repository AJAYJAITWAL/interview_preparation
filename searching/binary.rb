def binary_search(arr, target)
  low = 0
  high = arr.length - 1

  while low <= high
    mid = (low + high) / 2
    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end

  nil  # Not found
end

arr = [1, 2, 3, 4, 7, 9]
target = 7
result = binary_search(arr, target)
puts result.nil? ? "Not found" : "Found at index #{result}"



# Data Structure: Sorted Array
# Time Complexity: O(log n)
# Case: Sorted data; efficient for large datasets.