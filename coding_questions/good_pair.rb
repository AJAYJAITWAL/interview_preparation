# Given an array of integers nums, return the number of good pairs.
# A pair (i, j) is called good if nums[i] == nums[j] and i < j.

# Input: nums = [1,2,3,1,1,3]
# Output: 4
# Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.

# Ex 2:
# Input: nums = [1,1,1,1]
# Output: 6
# Explanation: Each pair in the array are good.

# Ex3;
# Input: nums = [1,2,3]
# Output: 0
# Constraints:

# 1 <= nums.length <= 100
# 1 <= nums[i] <= 100

def num_identical_pairs(nums)
  count = 0
  n = nums.length
  
  (0...n).each do |i|
    (i + 1...n).each do |j|
      count += 1 if nums[i] == nums[j]
    end
  end
  
  count
end

# Test cases
puts num_identical_pairs([1,2,3,1,1,3])  # Output: 4
puts num_identical_pairs([1,1,1,1])      # Output: 6
puts num_identical_pairs([1,2,3])        # Output: 0
