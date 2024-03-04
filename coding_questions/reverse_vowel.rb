
Given a string s, reverse only all the vowels in the string and return it.
The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.
 
Example 1:
Input: s = "hello"
Output: "holle"

Example 2:
Input: s = "leetcode"
Output: "leotcede"


s = "elapqoruse"
a = []
v = "aeiouAEIOU"
s.chars.each do |item|
  a << item if v.include?(item)
end

s.chars.each_with_index do |item, index|
  s[index] = a.pop if v.include?(item)
end


# def reverse_string(s)
#   vowels = "aeiouAEIOU"

#   left, right = 0, s.length - 1

#   while left < right
#     while left < right && !vowels.include?(s[left])
#       left += 1
#     end

#     while left < right && !vowels.include?(s[right])
#       right -= 1
#     end

#     s[left], s[right] = s[right], s[left] if left < right

#     left += 1
#     right -= 1
#   end
#   s
# end
 
# puts reverse_string("hello") #holle





# def reverse_vowels(s, left = 0, right = s.length - 1)
#   vowels = "aeiouAEIOU"

#   return s if left >= right

#   while left < right && !vowels.include?(s[left])
#     left += 1
#   end

#   while left < right && !vowels.include?(s[right])
#     right -= 1
#   end

#   s[left], s[right] = s[right], s[left] if left < right

#   reverse_vowels(s, left + 1, right - 1)
# end

# puts reverse_vowels("hello")       # Output: "holle"
# puts reverse_vowels("leetcodeo")   # Output: "leotcedoe"
# puts reverse_vowels("world")       # Output: "world"






# def reverse_vovel(str)
#   chars_arr =  str.chars
  
#   left = chars_arr.length - 1
#   vowels = "aeiouAEIOU"

#   chars_arr.each_with_index do |char, index|
#     if vowels.include?(char)
#       while(left >= 0)
#         if vowels.include?(chars_arr[left]) &&  left >= index
#           temp = chars_arr[index]
#           chars_arr[index] = chars_arr[left]
#           chars_arr[left] =  temp
#           left -= 1
  
#           break
#         end
        
#         left -= 1

#       end
         
#     end
#   end
#   chars_arr.join('')
# end

# p reverse_vovel("hello")