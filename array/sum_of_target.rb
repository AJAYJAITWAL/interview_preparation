a = [3, 4, 5, 3, 2, 4, 4, 5]
target = 7

for i in 0..(a.length - 1)
  for j in (i + 1)..(a.length - 1)
    if a[i] + a[j] == target
      puts "Pair found: #{a[i]} and #{a[j]}"
    end
  end
end
