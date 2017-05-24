# 2017-05-23

var_assign = 'A'                                       # => "A"
puts "var_assign = #{var_assign}"                      # => nil
var_assign.object_id                                   # => 70093749370280
puts "var_assign.object_id = #{var_assign.object_id}"  # => nil
var_mutate = 0                                         # => 0
add_array = [1, 2, 3]                                  # => [1, 2, 3]

puts "Show how to change local variables with different scopes"  # => nil

loop do
  var_assign = 'B'                # => "B",            "B",            "B",            "B"
  var_assign.object_id            # => 70093749368000, 70093749366460, 70093749365240, 70093749363940
  var_mutate += add_array.sample  # => 2,              5,              6,              8
  puts var_mutate                 # => nil,            nil,            nil,            nil
  break if var_mutate >= 8        # => false,          false,          false,          true
end                               # => nil

def method_scopes_are_outside_execution(reassign_param)
  reassign_param = 'C'                                   # => "C"
end                                                      # => :method_scopes_are_outside_execution


puts 'All Done!'
puts "****************************************"
puts
puts "Using blocks..."                                      # => nil
puts "var_mutate = #{var_mutate}"                      # => nil
puts "var_assign = #{var_assign}"                      # => nil
puts "var_assign.object_id = #{var_assign.object_id}"  # => nil
puts "add_array = #{add_array}"                        # => nil

puts                                                          # => nil
puts "Now using methods by assigning to the returned value..."           # => nil
var_assign = method_scopes_are_outside_execution(var_assign)  # => "C"
puts "var_assign = #{var_assign}"                             # => nil
puts "var_assign.object_id = #{var_assign.object_id}"         # => nil

# >> var_assign = A
# >> var_assign.object_id = 70093749370280
# >> Show how to change variables with different scopes
# >> 2
# >> 5
# >> 6
# >> 8
# >> All Done!
# >> var_mutate = 8
# >> var_assign = B
# >> var_assign.object_id = 70093749363940
# >> add_array = [1, 2, 3]
# >>
# >> Now assigning to returned value of method...
# >> var_assign = C
# >> var_assign.object_id = 70093749333620
