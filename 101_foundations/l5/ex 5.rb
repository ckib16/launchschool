munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters["Herman"]['age']

male_ages = []

munsters.each_value do |detail|
  p detail
  male_ages << detail["age"] if detail['gender'] == 'male'
end

male_ages.inject(:+)
