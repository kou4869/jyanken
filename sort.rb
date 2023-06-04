ar = %w"aaa bb c dddd"

ar.sort_by! do |v|
  v.size
end

p ar