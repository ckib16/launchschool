# 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

array = ages.values
array.reduce(:+)

# 3
array.reject{ |num| num > 100 }

# 6
# convert to array then use enumerable
ages.values.min

# 7
advice = "Few things in life are as important as house training your pet dinosaur."
advice.match("Dino")
