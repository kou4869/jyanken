ar = %w"aa bb cc dd"

ar.map! do |v|
  v + "999"
end

puts ar