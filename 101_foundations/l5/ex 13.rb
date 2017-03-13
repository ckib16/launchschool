arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]  # => [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# select sub-element odd only
# sort sub-element by odd only
# sort sub-elements against each other

arr.sort_by do |sub_element|                  # => [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
  sub_element.select { |num| num.odd? }.sort  # => [1, 7], [1, 9], [1, 3]
end                                           # => [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
