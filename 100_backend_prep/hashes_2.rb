# hashes_2.rb
#
hash_1 = { color: 'blue', weight: 160 }
hash_2 = { color: 'red', height: 72}

no_change = hash_1.merge(hash_2)
puts no_change
puts hash_1
puts hash_2

change = hash_1.merge!(hash_2)
puts change
puts hash_1
puts hash_2