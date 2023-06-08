# Ruby

Dir.chdir("/tmp/ruby/")
pwd = Dir.pwd
puts "現在の場所は #{pwd} です"

files = Dir.glob("#{pwd}/*")
file = files[0]
puts "#{file} というファイルが存在しました"
puts "このファイルに書き込んでみます"

File.open( file, "w" ) do |io|
  io.puts "こんにちは"
end
puts "書き込み終わりました"

puts "中身を読み込んで表示してみます"
File.open(file,"r") do |io|
  puts "中身==> " +  io.read
end

exit