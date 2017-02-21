flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]  # => ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones.each_with_index.to_h  # => {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}

##### 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }  # => {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}

ages.values.inject(:+)  # => 6174

##### 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }  # => {"Herman"=>32, "Lily"=>30, "Grandpa"=>402, "Eddie"=>10}

ages.values.reject! do |age|  # => [32, 30, 402, 10]
  age > 100                   # => false, false, true, false
end                           # => [32, 30, 10]

ages  # => {"Herman"=>32, "Lily"=>30, "Grandpa"=>402, "Eddie"=>10}

ages.select { |_, age| age < 100 }  # => {"Herman"=>32, "Lily"=>30, "Eddie"=>10}

##### 4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }  # => {"Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237}

ages.values.min  # => 10

##### 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)  # => ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones.index { |name| name[0,2] == 'Be' }  # => 3

##### 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)  # => ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones.map do |name|  # => ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
  name.slice(0,3)          # => "Fre", "Bar", "Wil", "Bet", "Bam", "Peb"
end                        # => ["Fre", "Bar", "Wil", "Bet", "Bam", "Peb"]

##### 7
statement = "The Flintstones Rock"  # => "The Flintstones Rock"

result = {}                                                  # => {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a                  # => ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
letters.each do |letter|                                     # => ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  letter_frequency = statement.scan(letter).count            # => 0,   0,   0,   0,   0,   1, 0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   1, 0,   1, 0,   0,   0,   0,   0,   0,   0,   0,   1, 0,   2, 0,   0,   1, 1, 0,   1, 1, 0,   2, 2, 0,   0,   0,   2, 2, 0,   0,   0,   0,   0,   0
  result[letter] = letter_frequency if letter_frequency > 0  # => nil, nil, nil, nil, nil, 1, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 1, nil, 1, nil, nil, nil, nil, nil, nil, nil, nil, 1, nil, 2, nil, nil, 1, 1, nil, 1, 1, nil, 2, 2, nil, nil, nil, 2, 2, nil, nil, nil, nil, nil, nil
end                                                          # => ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
result                                                       # => {"F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, "h"=>1, "i"=>1, "k"=>1, "l"=>1, "n"=>2, "o"=>2, "s"=>2, "t"=>2}

##### 8
numbers = [1, 2, 3, 4]    # => [1, 2, 3, 4]
numbers.each do |number|  # => [1, 2, 3, 4]
  p number                # => 1,   2
  numbers.pop(1)          # => [4], [3]
end                       # => [1, 2]

##### 9
words = "the flintstones rock"  # => "the flintstones rock"

words.split.map { |word| word.capitalize }.join(' ')  # => "The Flintstones Rock"

#####
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },    # => {"age"=>32, "gender"=>"male"}
  "Lily" => { "age" => 30, "gender" => "female" },    # => {"age"=>30, "gender"=>"female"}
  "Grandpa" => { "age" => 402, "gender" => "male" },  # => {"age"=>402, "gender"=>"male"}
  "Eddie" => { "age" => 10, "gender" => "male" },     # => {"age"=>10, "gender"=>"male"}
  "Marilyn" => { "age" => 23, "gender" => "female"}   # => {"age"=>23, "gender"=>"female"}
}                                                     # => {"Herman"=>{"age"=>32, "gender"=>"male"}, "Lily"=>{"age"=>30, "gender"=>"female"}, "Grandpa"=>{"age"=>402, "gender"=>"male"}, "Eddie"=>{"age"=>10, "gender"=>"male"}, "Marilyn"=>{"age"=>23, "gender"=>"female"}}

munsters.each do |name, details|     # => {"Herman"=>{"age"=>32, "gender"=>"male"}, "Lily"=>{"age"=>30, "gender"=>"female"}, "Grandpa"=>{"age"=>402, "gender"=>"male"}, "Eddie"=>{"age"=>10, "gender"=>"male"}, "Marilyn"=>{"age"=>23, "gender"=>"female"}}
  case details['age']                # => 32, 30, 402, 10, 23
  when 0..18
    details['age_group'] = 'kid'     # => "kid"
  when 18..65
    details['age_group'] = 'adult'   # => "adult", "adult", "adult"
  else
    details['age_group'] = 'senior'  # => "senior"
  end                                # => "adult", "adult", "senior", "kid", "adult"
end                                  # => {"Herman"=>{"age"=>32, "gender"=>"male", "age_group"=>"adult"}, "Lily"=>{"age"=>30, "gender"=>"female", "age_group"=>"adult"}, "Grandpa"=>{"age"=>402, "gender"=>"male", "age_group"=>"senior"}, "Eddie"=>{"age"=>10, "gender"=>"male", "age_group"=>"kid"}, "Marilyn"=>{"age"=>23, "gender"=>"female", "age_group"=>"adult"}}

# >> 1
# >> 2
