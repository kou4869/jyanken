hs = {apple: 100,
      banana: 150,
      chetty: 500}

hs.delete_if do |k, v|
  k.size <= 5
end

p hs
