def merge_sort(array)
  return array if array.length <= 1

  mid = array.length / 2
  left = merge_sort(array[0...mid])
  right = merge_sort(array[mid..-1])

  merge(left, right)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    result << (left.first <= right.first ? left.shift : right.shift)
  end
  result + left + right
end

array = [4, 2, 7, 1, 9, 3]
puts merge_sort(array)


# Average Time Complexity: O(n log n)
# Best Case: O(n log n)
# Worst Case: O(n log n)