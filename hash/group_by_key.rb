people = [
  { name: "Alice", age: 25 },
  { name: "Bob", age: 30 },
  { name: "Charlie", age: 25 },
  { name: "David", age: 30 },
  { name: "Eve", age: 25 }
]

# Group people by age using a hash
grouped_by_age = people.group_by { |person| person[:age] }


#Output =>

# {25=>[{:name=>"Alice", :age=>25}, {:name=>"Charlie", :age=>25}, {:name=>"Eve", :age=>25}], 30=>[{:name=>"Bob", :age=>30}, {:name=>"David", :age=>30}]}
