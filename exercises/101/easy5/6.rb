# Letter Counter (Part 1)
#
# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.
#
# Words consist of any string of characters that do not include a space.

def word_sizes(input_string)
  counts = Hash.new(0)               # => {}
  input_string.split.each do |word|  # => ["Four", "score", "and", "seven."]
    counts[word.size] += 1           # => 1, 1, 1, 1
  end                                # => ["Four", "score", "and", "seven."]
  counts                             # => {4=>1, 5=>1, 3=>1, 6=>1}
  # input_string.split(' ').map { |word| word.chars.count }  # => [4, 5, 3, 6]
end                                  # => :word_sizes

# Examples
#
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }  # => true
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}
