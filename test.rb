ar = %w"aa bb cc"

ar.each_with_index do |v, idx|
  puts "インデックス#{idx}番目は、#{v}です"
end