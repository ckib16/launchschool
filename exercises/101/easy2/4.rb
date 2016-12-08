# When will I Retire?
#
# Build a program that displays when the user will retire and how many years she has to work till retirement.
#
# Example:
#
# What is your age? 30
# At what age would you like to retire? 70
#
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# Input - age_now, age_retire
# Output - retire_year = 2016 + (age_retire - age_now)
# Data - string
# Algo:
# -> get inputs
# -> calc retire_year = 2016 + (age_retire - age_now)
# -> interpolate results

def retire_calc
  puts "=> What is your age?"
  age_now = gets.chomp.to_i

  puts "=> At what age would you like to retire?"
  age_retire = gets.chomp.to_i
  current_year = Time.now.year

  retire_year = current_year + (age_retire - age_now)
  years_left = retire_year - 2016

  puts "It's 2016. You will retire in #{retire_year}."
  puts "You only have #{years_left} years of work to go!"
end

retire_calc
