arr = [1,2,3,4,5]  # => [1, 2, 3, 4, 5]
counter = 0        # => 0

loop do
  arr[counter] +=1              # => 2,     3,     4,     5,     6
  counter +=1                   # => 1,     2,     3,     4,     5
  break if counter == arr.size  # => false, false, false, false, true
end                             # => nil

arr  # => [2, 3, 4, 5, 6]

#####

alphabet = 'abcdefghi'  # => "abcdefghi"
counter = 0             # => 0

loop do
  puts alphabet[counter]             # => nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil
  counter += 1                       # => 1,     2,     3,     4,     5,     6,     7,     8,     9
  break if counter == alphabet.size  # => false, false, false, false, false, false, false, false, true
end                                  # => nil

#####

colors = ['green', 'blue', 'purple', 'orange']  # => ["green", "blue", "purple", "orange"]
counter = 0                                     # => 0

loop do
  break if counter == colors.size  # => false, false, false, false, true
  puts colors[counter]             # => nil, nil, nil, nil
  counter += 1                     # => 1,   2,   3,   4
end                                # => nil

#####
number_of_pets = {
  'dogs' => 2,              # => 2
  'cats' => 4,              # => 4
  'fish' => 1               # => 1
}                           # => {"dogs"=>2, "cats"=>4, "fish"=>1}
pets = number_of_pets.keys  # => ["dogs", "cats", "fish"]
counter = 0                 # => 0

loop do
  break if counter == number_of_pets.size             # => false, false, false, true
  current_pet = pets[counter]                         # => "dogs", "cats", "fish"
  current_pet_number = number_of_pets[current_pet]    # => 2,      4,      1
  puts "I have #{current_pet_number} #{current_pet}"  # => nil,    nil,    nil
  counter += 1                                        # => 1,      2,      3
end                                                   # => nil

# >> a
# >> b
# >> c
# >> d
# >> e
# >> f
# >> g
# >> h
# >> i
# >> green
# >> blue
# >> purple
# >> orange
# >> I have 2 dogs
# >> I have 4 cats
# >> I have 1 fish
