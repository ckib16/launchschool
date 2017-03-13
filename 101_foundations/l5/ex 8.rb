hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}  # => {:first=>["the", "quick"], :second=>["brown", "fox"], :third=>["jumped"], :fourth=>["over", "the", "lazy", "dog"]}

VOWELS = "aeiou"  # => "aeiou"

hsh.each do |_, value|                    # => {:first=>["the", "quick"], :second=>["brown", "fox"], :third=>["jumped"], :fourth=>["over", "the", "lazy", "dog"]}
  value.each do |word|                    # => ["the", "quick"], ["brown", "fox"], ["jumped"], ["over", "the", "lazy", "dog"]
    word.chars.each do |char|             # => ["t", "h", "e"], ["q", "u", "i", "c", "k"], ["b", "r", "o", "w", "n"], ["f", "o", "x"], ["j", "u", "m", "p", "e", "d"], ["o", "v", "e", "r"], ["t", "h", "e"], ["l", "a", "z", "y"], ["d", "o", "g"]
      puts char if VOWELS.include?(char)  # => nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
    end                                   # => ["t", "h", "e"], ["q", "u", "i", "c", "k"], ["b", "r", "o", "w", "n"], ["f", "o", "x"], ["j", "u", "m", "p", "e", "d"], ["o", "v", "e", "r"], ["t", "h", "e"], ["l", "a", "z", "y"], ["d", "o", "g"]
  end                                     # => ["the", "quick"], ["brown", "fox"], ["jumped"], ["over", "the", "lazy", "dog"]
end                                       # => {:first=>["the", "quick"], :second=>["brown", "fox"], :third=>["jumped"], :fourth=>["over", "the", "lazy", "dog"]}

# >> e
# >> u
# >> i
# >> o
# >> o
# >> u
# >> e
# >> o
# >> e
# >> e
# >> a
# >> o
