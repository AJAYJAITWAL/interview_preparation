array = [4, 2, 7, 1, 9, 3]

array.length.times do |i|
  min_index = i
  (i + 1...array.length).each do |j|
    min_index = j if array[j] < array[min_index]
  end
  array[i], array[min_index] = array[min_index], array[i]
end

puts array




# Average Time Complexity: O(n^2)
# Best Case: O(n^2)
# Worst Case: O(n^2)