arr = [1, 2, 3, 'a', 'b', 'c']  # => [1, 2, 3, "a", "b", "c"]

# Method: `array[] =` is mutating
def mutate_me(old_array)
  old_array[0] = 'z'      # => "z"
end                       # => :mutate_me

mutate_me(arr)  # => "z"
arr             # => ["z", 2, 3, "a", "b", "c"]

# Method: `+=` is NOT mutating
counter = 0  # => 0

def non_mutate(ctr)
  ctr += 1           # => 1, 1
end                  # => :non_mutate

non_mutate(counter)                                            # => 1
counter                                                        # => 0
puts "Just calling non-mutating method: counter = #{counter}"  # => nil

counter = non_mutate(counter)                                                     # => 1
counter                                                                           # => 1
puts "Assigning result of non-mutating method to variable: counter = #{counter}"  # => nil

# >> Just calling non-mutating method: counter = 0
# >> Assigning result of non-mutating method to variable: counter = 1
