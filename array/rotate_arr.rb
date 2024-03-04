# Rotate given array at given index.
# arr = [1,2,3,4,5,6]
# 
# output = [4,5,6,1,2,3]

# first way
arr = [1,2,3,4,5,6]
index = -3
out = []


arr.length.times do |i|
  out << arr[(index + i) % arr.length]
end


# second way
arr[index..-1] + arr[0..index]