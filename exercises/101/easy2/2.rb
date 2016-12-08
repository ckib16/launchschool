# How big is the room?
#
# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
#
# Note: 1 square meter == 10.7639 square feet
#
# Do not worry about validating the input at this time.
#
# Example Run
#
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# Input - length (integer), width (integer)
# Output - String with integer interpolated
# Data - integer
# Algo:
# -> ask for length and width
# -> convert to integer
# -> calc length * width in meters
# -> calc length * width in sq feet
# -> interpolate results

def area_of_room(length, width)
  puts "=> Enter the length of the room in meters:"
  length_meters = gets.chomp
  puts "=> Enter the width of the room in meters:"
  width_meters = gets.chomp

  area_meters = length_meters.to_i * width_meters.to_i
  area_sq_ft = area_meters * 10.7639

  puts "The area of the room is #{area_meters} square meters (#{area_sq_ft} square feet)."
end

area_of_room(10, 7)
