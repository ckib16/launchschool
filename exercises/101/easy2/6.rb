# Odd Numbers
#
# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# Input - N/A
# Output - odd numbers 1-99 on separate lines
# Data - string
# Algo:
# -> get range 1-99
# -> iterate thru range
# -> if num % 2 == 1
# -> puts num

def print_odd
  range = (1..99).to_a
  range.each do |num|
    if num % 2 == 1
      puts num
    end
  end
end

print_odd
