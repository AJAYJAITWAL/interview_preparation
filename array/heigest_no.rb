a = [3,4,5,3,2,4,4,5]
max = 0

a.each do |item|
  if item > max
    max = item 
  else
    next
  end
end
puts max
