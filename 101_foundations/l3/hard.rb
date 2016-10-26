def uuid
  random_letters = 'a'..'z'
  random_numbers = (0..9)
end                          # => :uuid

# f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91

random_letters = ('a'..'z').to_a  # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
random_numbers = (0..9).to_a      # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

random_characters = ('a'..'z').to_a + (0..9).to_a  # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

random_characters.sample(3).to_s  # => "[8, \"i\", 3]"
