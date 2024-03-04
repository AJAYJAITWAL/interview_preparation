# Given an array of N integers, and a number sum, the task is to find the number of pairs of integers in the array whose sum is equal to sum.
# Input:  arr[] = {1, 5, 7, -1}, sum = 6
# Output:  2
# Explanation: Pairs with sum 6 are (1, 5) and (7, -1).
# Input:  arr[] = {1, 5, 7, -1, 5}, sum = 6
# Output:  3
# Explanation: Pairs with sum 6 are (1, 5), (7, -1) & (1, 5).

arr =  [1, 5, 7, -1, 5]
sum = 6
seen_index = []
output = 0
pair = []

arr.each_with_index do |e, index|
  arr[(index + 1)..].each_with_index do |e1, new_index|
    next if seen_index.include?(index + new_index + 1)

    if e + e1 == sum
      output += 1
      seen_index.concat([index, index + new_index + 1])
      pair << [e, e1]
    end
  end
end


puts output
puts pair