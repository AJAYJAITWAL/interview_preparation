def quick_sort(array)
  return array if array.length <= 1

  pivot = array.sample

  less = array.select { |el| el < pivot }
  equal = array.select { |el| el == pivot }
  greater = array.select { |el| el > pivot }

  quick_sort(less) + equal + quick_sort(greater)
end

array = [4, 2, 7, 1, 9, 3]
puts quick_sort(array)


# Average Time Complexity: O(n log n)
# Best Case: O(n log n)
# Worst Case: O(n^2) - although this is rare in practice due to the random selection of the pivot