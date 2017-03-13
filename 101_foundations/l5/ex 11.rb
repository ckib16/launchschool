arr = [[2], [3, 5, 7], [9], [11, 13, 15]]  # => [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |element|       # => [[2], [3, 5, 7], [9], [11, 13, 15]]
  element.select do |num|  # => [2], [3, 5, 7], [9], [11, 13, 15]
    num % 3 == 0           # => false, true, false, false, true, false, false, true
  end                      # => [], [3], [9], [15]
end                        # => [[], [3], [9], [15]]
