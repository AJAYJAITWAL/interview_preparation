
arr = [{"a"=>4},{"a"=>67},{"d"=>6},{"e"=>56},{"d"=>34},{"c"=>5}]

#First way with function

puts arr.max_by { |item| item.values }

# Second way without function

max = 0
ans = ""

arr.each do |item|
  if item.values[0] > max
    max = item.values[0]
    ans = item
  end
end

puts ans