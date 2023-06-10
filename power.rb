# モジュール化
# include されると内部のメソッドだけが
# 相手先で展開される
module Power
  # 電源ON
  def power( onoff )
    puts "電源を入れました" if onoff.to_sym == :on
    puts "電源を切りました" if onoff.to_sym == :off
  end
end