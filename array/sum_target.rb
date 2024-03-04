a = [2,3,4,5,6,8]
target = 5
new_arr = []

a.each do |item|
  new_arr unless new_arr.include?(item)
    if  new_arr.sum == target
      a = new_arr
  end
  a
end
