# 冷蔵庫モデルB クラス
# モデルAを継承する
require "./reizoko.rb"

class ReizoukoB < ReizoukoA
  # 既存の機能を上書きする
  # 同名のメソッドがあればオーバーライドされる
  def cool_down
    @temperature -= 3
    puts "冷やす機能がパワーアップしました"
    puts "現在の温度は #{@temperature} です"
  end
end

# 実行制御
if __FILE__ == $0 then
  reizokoB = ReizoukoB.new(15)
  reizokoB.cool_down
  reizokoB.power(:off)
end