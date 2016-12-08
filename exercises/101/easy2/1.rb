# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.
#
# Example Output
#
# Teddy is 69 years old!

# Input - none, random
# Output - string with random number
# Data - string
# Algo:
# -> generate random integer from 20..200
# -> interpolate in string

age = (20..200).to_a.sample        # => 110
puts "Teddy is #{age} years old!"  # => nil

# >> Teddy is 110 years old!
