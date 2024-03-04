array = [4, 2, 7, 1, 9, 3]
array.length.times do
  (array.length - 1).times do |i|
    array[i], array[i + 1] = array[i + 1], array[i] if array[i] > array[i + 1]
  end
end
puts array


# Average Time Complexity: O(n^2)
# Best Case: O(n) - when the list is nearly sorted
# Worst Case: O(n^2)
