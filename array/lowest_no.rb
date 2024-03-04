a = [3,4,5,3,2,4,4,5]
low = a[0]

a.each do |item|
  low = item if item < low
end

puts low
