# Letter Counter (Part 2)
#
# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

def word_sizes(input_string)
  counts = Hash.new(0)
    input_string.split.each do |word|
      clean_word = word.delete('^A-Za-z')
      counts[clean_word.size] += 1
    end
    counts
end

# Examples
#
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
