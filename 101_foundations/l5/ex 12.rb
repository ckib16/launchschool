arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]  # => [[:a, 1], ["b", "two"], ["sea", {:c=>3}], [{:a=>1, :b=>2, :c=>3, :d=>4}, "D"]]


new_hash = {}  # => {}

arr.each do |element|                # => [[:a, 1], ["b", "two"], ["sea", {:c=>3}], [{:a=>1, :b=>2, :c=>3, :d=>4}, "D"]]
  new_hash[element[0]] = element[1]  # => 1, "two", {:c=>3}, "D"
end                                  # => [[:a, 1], ["b", "two"], ["sea", {:c=>3}], [{:a=>1, :b=>2, :c=>3, :d=>4}, "D"]]

new_hash  # => {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
