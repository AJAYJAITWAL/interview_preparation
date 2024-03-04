# a = ["abcd", 123, ["test", 323], ["cff", ["abcdef", 1234]]]

# a.flatten!
# s = []
# n = []
# a.each do |item|
#   if item.is_a?(Integer)
#     n << item
#   elsif item.is_a?(String)
#     s << item
#   end
# end

# s.sort + n.sort

def extract_strings_and_integers(input, output = [])
  input.each do |element|
    if element.is_a?(String)
      output << element
    elsif element.is_a?(Integer)
      output << element
    elsif element.is_a?(Array)
      extract_strings_and_integers(element, output)
    end
  end
  output
end

input = ["abcd", 123, ["test", 323], ["cff", ["abcdef", 1234]]]
output = extract_strings_and_integers(input)


s = []
n = []
output.each do |item|
  if item.is_a?(Integer)
    n << item
  elsif item.is_a?(String)
    s << item
  end
end

puts s + n