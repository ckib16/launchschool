a = 2         # => 2
b = [5, 8]    # => [5, 8]
arr = [a, b]  # => [2, [5, 8]]

arr[0] += 2     # => 4
arr[1][0] -= a  # => 3
arr             # => [4, [3, 8]]
