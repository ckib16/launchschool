# Even Numbers
#
# Print the even numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# Input - N/A
# Output - even numbers 1-99 on separate lines
# Data - string
# Algo:
# -> get range 1-99
# -> iterate thru range
# -> if num % 2 == 0
# -> puts num

def print_odd
  range = (1..99).to_a
  range.each do |num|
    if num % 2 == 0
      puts num
    end
  end
end

print_odd

# >> 2
# >> 4
# >> 6
# >> 8
# >> 10
# >> 12
# >> 14
# >> 16
# >> 18
# >> 20
# >> 22
# >> 24
# >> 26
# >> 28
# >> 30
# >> 32
# >> 34
# >> 36
# >> 38
# >> 40
# >> 42
# >> 44
# >> 46
# >> 48
# >> 50
# >> 52
# >> 54
# >> 56
# >> 58
# >> 60
# >> 62
# >> 64
# >> 66
# >> 68
# >> 70
# >> 72
# >> 74
# >> 76
# >> 78
# >> 80
# >> 82
# >> 84
# >> 86
# >> 88
# >> 90
# >> 92
# >> 94
# >> 96
# >> 98
