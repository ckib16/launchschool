munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },    # => {"age"=>32, "gender"=>"male"}
  "Lily" => { "age" => 30, "gender" => "female" },    # => {"age"=>30, "gender"=>"female"}
  "Grandpa" => { "age" => 402, "gender" => "male" },  # => {"age"=>402, "gender"=>"male"}
  "Eddie" => { "age" => 10, "gender" => "male" },     # => {"age"=>10, "gender"=>"male"}
  "Marilyn" => { "age" => 23, "gender" => "female"}   # => {"age"=>23, "gender"=>"female"}
}                                                     # => {"Herman"=>{"age"=>32, "gender"=>"male"}, "Lily"=>{"age"=>30, "gender"=>"female"}, "Grandpa"=>{"age"=>402, "gender"=>"male"}, "Eddie"=>{"age"=>10, "gender"=>"male"}, "Marilyn"=>{"age"=>23, "gender"=>"female"}}

munsters.each do |munster, detail|                                   # => {"Herman"=>{"age"=>32, "gender"=>"male"}, "Lily"=>{"age"=>30, "gender"=>"female"}, "Grandpa"=>{"age"=>402, "gender"=>"male"}, "Eddie"=>{"age"=>10, "gender"=>"male"}, "Marilyn"=>{"age"=>23, "gender"=>"female"}}
  p "#{munster} is a #{detail["age"]}-year-old #{detail["gender"]}"  # => "Herman is a 32-year-old male", "Lily is a 30-year-old female", "Grandpa is a 402-year-old male", "Eddie is a 10-year-old male", "Marilyn is a 23-year-old female"
end                                                                  # => {"Herman"=>{"age"=>32, "gender"=>"male"}, "Lily"=>{"age"=>30, "gender"=>"female"}, "Grandpa"=>{"age"=>402, "gender"=>"male"}, "Eddie"=>{"age"=>10, "gender"=>"male"}, "Marilyn"=>{"age"=>23, "gender"=>"female"}}

# >> "Herman is a 32-year-old male"
# >> "Lily is a 30-year-old female"
# >> "Grandpa is a 402-year-old male"
# >> "Eddie is a 10-year-old male"
# >> "Marilyn is a 23-year-old female"
