arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]  # => [["b", "c", "a"], [2, 1, 3], ["blue", "black", "green"]]

arr.map do |sub_array|    # => [["b", "c", "a"], [2, 1, 3], ["blue", "black", "green"]]
  sub_array.sort.reverse  # => ["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]
end                       # => [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]
