a = [3,4,5,3,2,4,4,5]
max, smax = nil

a.each do |item|
  if max.nil? || item > max
    smax = max
    max = item
  elsif smax.nil? || (item > smax && item != max)
    smax = item
  end
end
puts smax
