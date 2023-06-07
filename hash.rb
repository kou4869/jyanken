hs = {apple: 100,
      banana: 150,
      chetty: 500}

hs.reject! do |k, v|
  v < 200
end

p hs