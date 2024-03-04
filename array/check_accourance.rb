#Input =>
elements = [1, 2, 3, 1, 2, 4, 5, 1, 3, 5, 2]

#Output =>
# {1=>3, 2=>3, 3=>2, 4=>1, 5=>2}

#First way

element_count = Hash.new(0)
elements.each { |element| element_count[element] += 1 }


#Second way

elements.group_by{|e| e}.map{|k, v| [k, v.length]}.to_h