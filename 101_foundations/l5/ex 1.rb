arr = ['10', '11', '9', '7', '8']

new_array = arr.map do |e|
  e.to_i
end

new_array.sort.reverse
# => [11, 10, 9, 8, 7]
