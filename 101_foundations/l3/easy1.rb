advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')
puts advice

a = 42
range = 1..100
range.include?(a)

famous_words = "seven years ago..."
puts famous_words.prepend("Four score and ")

puts flintstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]].flatten!
# => nil
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.select!{ |k,v| k == "Barney" }
# => {"Barney"=>2}
flintstones.flatten
# => ["Barney", 2]
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.assoc("Barney")

# 10
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = Hash.new
flintstones.each_with_index { |item, index|
  flintstones_hash[item] = index
}
flintstones_hash

# >> Few things in life are as urgent as house training your pet dinosaur.
# >> Four score and seven years ago...
# >> Fred
# >> Wilma
# >> Barney
# >> Betty
# >> BamBam
# >> Pebbles
