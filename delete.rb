ar = %w"apple banana apple orange"

ar.delete_if do |v|
  v == "apple"
end

p ar