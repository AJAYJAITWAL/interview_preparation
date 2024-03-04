text = "Ruby is a dynamic, reflective, object-oriented, general-purpose programming language."

# Count word frequency using a hash
word_frequency = Hash.new(0)
text.split.each { |word| word_frequency[word.downcase] += 1 }

#Output => ["Ruby", "is", "a", "dynamic,", "reflective,", "object-oriented,", "general-purpose", "programming", "language."]
