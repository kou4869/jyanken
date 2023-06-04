ar = %w"apple banana apple orange"

ar.detect! do |v|
  v == "apple"
end

puts ar