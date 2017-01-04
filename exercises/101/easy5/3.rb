# After Midnight (Part 2)
#
# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.
#
# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.
#
# You may not use ruby's Date and Time methods.

MINUTES_PER_HOUR = 60                               # => 60
HOURS_PER_DAY = 24                                  # => 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR  # => 1440

def after_midnight(input_time_string)
  hours, minutes = input_time_string.split(':').map{ |string| string.to_i}  # => [0, 0], [0, 0], [12, 34], [12, 34], [24, 0], [24, 0]
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY                    # => 0,      0,      754,      754,      0,       0
end                                                                         # => :after_midnight

def before_midnight(input_time_string)
  delta_minutes = MINUTES_PER_DAY - after_midnight(input_time_string)  # => 1440, 686, 1440
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY                # => 0,    nil, 0
  delta_minutes                                                        # => 0,    686, 0
end                                                                    # => :before_midnight

# Examples:
#
after_midnight('00:00') == 0     # => true
before_midnight('00:00') == 0    # => true
after_midnight('12:34') == 754   # => true
before_midnight('12:34') == 686  # => true
after_midnight('24:00') == 0     # => true
before_midnight('24:00') == 0    # => true
# Disregard Daylight Savings and Standard Time and other irregularities.
