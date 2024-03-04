#Input =>
my_hash = {'apple' => 3, 'apple' => , 'banana' => 2, 'orange' => 5, 'grape' => 2, 'kiwi' => 3, 'cherry' => 5 } 

#Output =>
# {["apple", 3]=>1, ["banana", 2]=>1, ["orange", 5]=>1, ["grape", 2]=>1, ["kiwi", 3]=>1, ["cherry", 5]=>1}

element_count = Hash.new(0)

my_hash.each {|e| element_count[e] += 1 }
