hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |_, sub_hash|
  if sub_hash[:type] == 'fruit'
    sub_hash[:colors].map do |color|
      color.capitalize
    end
  elsif sub_hash[:type] == 'vegetable'
    sub_hash[:size].upcase
  end

end



# Result -> [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
