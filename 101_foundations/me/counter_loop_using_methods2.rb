count = 0  # => 0

def add_count(integer)
  integer += 1          # => 1, 1
end                     # => :add_count

add_count(count)                              # => 1
puts "Just calling method: count = #{count}"  # => nil

count = add_count(count)                                         # => 1
puts "Assigning result of method to variable: count = #{count}"  # => nil

# >> Just calling method: count = 0
# >> Assigning result of method to variable: count = 1
