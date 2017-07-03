# 2017-05-23

var_assign = 'A'                                       # => "A"
puts "var_assign = #{var_assign}"                      # => nil
var_assign.object_id                                   # => 70366886172720
puts "var_assign.object_id = #{var_assign.object_id}"  # => nil
var_mutate = 0                                         # => 0
add_array = [1, 2, 3]                                  # => [1, 2, 3]

puts "Show how to change local variables with different scopes"  # => nil

loop do
  var_assign = 'B'                # => "B",            "B",            "B",            "B"
  var_assign.object_id            # => 70366886170500, 70366886169180, 70366886167880, 70366886166760
  var_mutate += add_array.sample  # => 3,              4,              7,              9
  puts var_mutate                 # => nil,            nil,            nil,            nil
  break if var_mutate >= 8        # => false,          false,          false,          true
end                               # => nil

def method_scopes_are_outside_execution(reassign_param)
  reassign_param = 'C'                                   # => "C"
end                                                      # => :method_scopes_are_outside_execution


puts 'All Done!'                                       # => nil
puts "****************************************"        # => nil
puts                                                   # => nil
puts "Using blocks..."                                 # => nil
puts "var_mutate = #{var_mutate}"                      # => nil
puts "var_assign = #{var_assign}"                      # => nil
puts "var_assign.object_id = #{var_assign.object_id}"  # => nil
puts "add_array = #{add_array}"                        # => nil

puts                                                            # => nil
puts "Now using methods by assigning to the returned value..."  # => nil
var_assign = method_scopes_are_outside_execution(var_assign)    # => "C"
puts "var_assign = #{var_assign}"                               # => nil
puts "var_assign.object_id = #{var_assign.object_id}"           # => nil

# >> var_assign = A
# >> var_assign.object_id = 70366886172720
# >> Show how to change local variables with different scopes
# >> 3
# >> 4
# >> 7
# >> 9
# >> All Done!
# >> ****************************************
# >>
# >> Using blocks...
# >> var_mutate = 9
# >> var_assign = B
# >> var_assign.object_id = 70366886166760
# >> add_array = [1, 2, 3]
# >>
# >> Now using methods by assigning to the returned value...
# >> var_assign = C
# >> var_assign.object_id = 70366890985520
