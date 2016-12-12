# car = {
#   type:    'sedan',
#   color:   'blue',
#   year:    2003
# }
#
# puts car[:color]

#####
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# numbers.each do |k, v|
#   puts "A #{k} number is #{v}"
# end

# half_numbers = numbers.map do |k, v|
#   v / 2
# end
#
# p half_numbers
#
# low_numbers = numbers.select do |k, v|
#   v < 25
# end
#
# p low_numbers

#####
# fleet = {
#   car: {
#     type: 'sedan',
#     color: 'blue',
#     year: 2003
#   },
#   truck: {
#     type: 'pickup',
#     color: 'red',
#     year: 1998
#   }
# }
#
# p fleet

#####
# car = {
#   type:  'sedan',
#   color: 'blue',
#   year:  2003
# }

car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]  # => [[:type, "sedan"], [:color, "blue"], [:year, 2003]]
p car                                                      # => [[:type, "sedan"], [:color, "blue"], [:year, 2003]]

# >> [[:type, "sedan"], [:color, "blue"], [:year, 2003]]
