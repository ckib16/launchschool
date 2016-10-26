# 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

male_ages = munsters["Herman"]["age"] + munsters["Grandpa"]["age"] + munsters["Eddie"]["age"]
# => 444

total_male_age = 0
munsters.each do |name, details|
  total_male_age += details["age"] if details["gender"] == "male"
end

puts total_male_age
# => nil

# 2
munsters.each do |name, details|
  puts "#{ name } is a #{ details['age'] } year old #{ details['gender'] } "
end
# => {"Herman"=>{"age"=>32, "gender"=>"male"},
#     "Lily"=>{"age"=>30, "gender"=>"female"},
#     "Grandpa"=>{"age"=>402, "gender"=>"male"},
#     "Eddie"=>{"age"=>10, "gender"=>"male"}}

# 3
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
# => nil

# 4
sentence = "Humpty Dumpty sat on a wall."
sentence.split(/\W/).reverse.join(' ') + '.'
# => "wall a on sat Dumpty Humpty."

# 6
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
    demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

new_hash = mess_with_demographics(munsters)
munsters
# => {"Herman"=>{"age"=>74, "gender"=>"other"},
#     "Lily"=>{"age"=>72, "gender"=>"other"},
#     "Grandpa"=>{"age"=>444, "gender"=>"other"},
#     "Eddie"=>{"age"=>52, "gender"=>"other"},
#     "Marilyn"=>{"age"=>65, "gender"=>"other"}}

# >> 444
# >> Herman is a 32 year old male
# >> Lily is a 30 year old female
# >> Grandpa is a 402 year old male
# >> Eddie is a 10 year old male
# >> My string looks like this now: pumpkinsrutabaga
# >> My array looks like this now: ["pumpkins", "rutabaga"]
