# Write a method that counts the number of occurrences of each element in a given array.
#
# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
#
# count_occurrences(vehicles)
# Once counted, print each element alongside the number of occurrences.
#
# Expected output:
#
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# input = array[ strings ]
# output = string & integer
# Examples above
# Algo:
# iterate thru each element
# if element includes certain strings, increase count by 1
# print each unique element along with its count

# My original

# def count_occurrences(vehicles)
#   car_count = 0
#   truck_count = 0
#   suv_count = 0
#   motorcycle_count = 0
#
#   vehicles.each do |vehicle|
#     case vehicle
#     when 'car'
#       car_count += 1
#     when 'truck'
#       truck_count += 1
#     when 'SUV'
#       suv_count += 1
#     when 'motorcycle'
#       motorcycle_count += 1
#     end
#   end
#   puts "car => #{car_count}"
#   puts "truck => #{truck_count}"
#   puts "SUV => #{suv_count}"
#   puts "motorcycle => #{motorcycle_count}"
# end

# Better solution from website (use array#count for counting)

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']  # => ["car", "car", "truck", "car", "SUV", "truck", "motorcycle", "motorcycle", "car", "truck"]

def count_occurrences(array)
  occurrences = {}            # => {}

  array.uniq.each do |element|                   # => ["car", "truck", "SUV", "motorcycle"]
    occurrences[element] = array.count(element)  # => 4, 3, 1, 2
  end                                            # => ["car", "truck", "SUV", "motorcycle"]

  occurrences.each do |k, v|  # => {"car"=>4, "truck"=>3, "SUV"=>1, "motorcycle"=>2}
    puts "#{k} => #{v}"       # => nil, nil, nil, nil
  end                         # => {"car"=>4, "truck"=>3, "SUV"=>1, "motorcycle"=>2}
end                           # => :count_occurrences

count_occurrences(vehicles)  # => {"car"=>4, "truck"=>3, "SUV"=>1, "motorcycle"=>2}

# >> car => 4
# >> truck => 3
# >> SUV => 1
# >> motorcycle => 2
