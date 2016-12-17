# Exclusive Or
#
# The || operator returns true if either or both of its operands are true, false if both operands are false. The && operator returns true if both of its operands are true, and false if either operand is false. This works great until you need only one of two conditions to be true, the so-called exclusive or.
#
# In this exercise, you will write a method named xor that takes two arguments, and returns true if exactly one of its arguments is true, false otherwise.
#
# Examples:
#
# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false
#
# Input - integer
# Output - bool
# Data - bool
# Algo:
# puts/gets input
# - if input1 true && input2 false
# - true
# elsif reverse
#   true
# else
#   false
# end

def xor?(input1, input2)
  if input1 == true && input2 == false     # => false, true, false, false
    true                                   # => true
  elsif input1 == false && input2 == true  # => true, false, false
    true                                   # => true
  else
    false                                  # => false, false
  end                                      # => true, true, false, false
end                                        # => :xor?

xor?(5.even?, 4.even?) == true  # => true
xor?(5.odd?, 4.odd?) == true    # => true
xor?(5.odd?, 4.even?) == false  # => true
xor?(5.even?, 4.odd?) == false  # => true
