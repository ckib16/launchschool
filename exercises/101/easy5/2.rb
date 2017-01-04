# After Midnight (Part 1)
#
# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.
#
# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.
#
# You may not use ruby's Date and Time classes.
#

# --- Read ---
# 1. Understand the Problem
# input:
# rules:
# output:
#
# 2. Test Cases
#
# --- Solve ---
# 3. Data Structure = ____
# input:
# rules: (often a hash)
#
# 4. Algorithm
# output:


MINUTES_PER_HOUR = 60                               # => 60
HOURS_PER_DAY = 24                                  # => 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR  # => 1440

def time_of_day(input_minutes)
 delta_minutes = input_minutes % MINUTES_PER_DAY          # => 0,       1437,     35,      3,       120,     800,      89
 hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)  # => [0, 0],  [23, 57], [0, 35], [0, 3],  [2, 0],  [13, 20], [1, 29]
 format('%02d:%02d', hours, minutes)                      # => "00:00", "23:57",  "00:35", "00:03", "02:00", "13:20",  "01:29"
end                                                       # => :time_of_day

# Examples:
#
time_of_day(0) == "00:00"      # => true
time_of_day(-3) == "23:57"     # => true
time_of_day(35) == "00:35"     # => true
time_of_day(-1437) == "00:03"  # => true
time_of_day(3000) == "02:00"   # => true
time_of_day(800) == "13:20"    # => true
time_of_day(-4231) == "01:29"  # => true
# Disregard Daylight Savings and Standard Time and other complications.
