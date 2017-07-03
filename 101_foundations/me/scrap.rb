array = [1, 2, 3, 4, 5, 6]  # => [1, 2, 3, 4, 5, 6]

input = 4  # => 4

array.select { |e| e > 1}.include?(input)  # => true
array.select { |e| e > 1}                  # => [2, 3, 4, 5, 6]
