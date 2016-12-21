# What Century is That?
#
# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
#
# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.
#
# Examples:
#
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'
#
# --- Read ---
# 1. Understand the Problem
# input: year
# rules:
# - The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
# - New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.
#   1 - st
#   2 - nd
#   3 - rd
#   all esle - th
# output: century
#
# 2. Test Cases
#
# --- Solve ---
# 3. Data Structure = array
# input: integer -> string
# rules: (often a hash)
# century_endings = {1: 'st', 2: 'nd', 3: 'rd'}
#
# century name = lop off last 2 digits, then add 1 unless last digit == 0
#
# 4. Algorithm
# output:
# input_array = input.split.to_a
# if input_array.last.include(century_endings)
#   century_end_string =

def century(year)
  century = year / 100 + 1                # => 21,     21,     20,     3,     1,     102,     11,     12,     113
  century -= 1 if year % 100 == 0         # => 20,     nil,    nil,    nil,   nil,   nil,     nil,    nil,    nil
  century.to_s + century_suffix(century)  # => "20th", "21st", "20th", "3rd", "1st", "102nd", "11th", "12th", "113th"
end                                       # => :century

def century_suffix(century)
  last_digit = century % 10  # => 0, 1, 0, 3, 1, 2, 1, 2, 3

  return 'th' if [11, 12, 13].include?(century % 100)  # => false, false, false, false, false, false, true, true, true

  case last_digit  # => 0, 1, 0, 3, 1, 2
  when 1
    'st'           # => "st", "st"
  when 2
    'nd'           # => "nd"
  when 3
    'rd'           # => "rd"
  else
    'th'           # => "th", "th"
  end              # => "th", "st", "th", "rd", "st", "nd"
end                # => :century_suffix

century(2000) == '20th'    # => true
century(2001) == '21st'    # => true
century(1965) == '20th'    # => true
century(256) == '3rd'      # => true
century(5) == '1st'        # => true
century(10103) == '102nd'  # => true
century(1052) == '11th'    # => true
century(1127) == '12th'    # => true
century(11201) == '113th'  # => true
