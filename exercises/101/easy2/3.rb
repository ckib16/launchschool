# Tip calculator
#
# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.
#
# Example:
#
# What is the bill? 200
# What is the tip percentage? 15
#
# The tip is $30.0
# The total is $230.0

# Input - bill (integer) tip (integer)
# Output - tip & total interpolated
# Data - string
# Algo:
# -> get inputs
# -> tip = bill * tip_rate
# -> total = bill + tip
# -> interpolate results

def tip_calc
  puts "=> What is the bill?"
  bill = gets.chomp

  puts "=> What is the tip percentage?"
  tip_rate = gets.chomp

  tip = (tip_rate.to_f/100) * bill.to_f
  total = bill.to_f + tip.to_f

  puts "The tip is $#{tip}"
  puts "The total is $#{total}"
end

tip_calc
