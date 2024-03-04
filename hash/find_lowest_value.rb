
arr = [{"a"=>4},{"a"=>67},{"d"=>6},{"e"=>56},{"d"=>34},{"c"=>5}]

#First way with function

puts arr.min_by { |item| item.values }

# Second way without function

min = arr[0]

arr.each do |item|
  min = item if item.values[0] < min.values[0]
end

puts min