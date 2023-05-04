class Jyankan
  def initialize()  #始めにインスタンスが立ち上がった時、そのメソッドを「new」として起動してくれるRubyのオプション
    puts "最初はグー、じゃんけん…"
    puts "グーなら0、チョキなら1、パーなら2、を入力してください。"
    @input = gets.chomp.to_i  #入力したものは全て文字列で返ってくるので、数字に変換するようにする
    while @input > 2    #[while] trueの場合、繰り返し処理を行う
      puts "入力が間違っています。"
      puts "グーなら0、チョキなら1、パーなら2、を入力してください。"
      @input = gets.chomp.to_i
    end
  end

  def judgement    #勝ち負けの判定
    hand_type = ["グー", "チョキ", "パー"]  #手の種類を配列を使って定義
    my_hand = @input
    pc_hand = rand(0..2)  #randで(0～2)の数字(インデックス番号)の内容をランダムで出力してくれるようにする

    puts "あなたは#{hand_type[my_hand]}です"          # #{hand_type[my_hand]}はhand_typeで定義した配列の中の[my_hand]、「あなたが選んだ選択肢」の数字が入る
    puts "コンピューターは#{hand_type[pc_hand]}です"

    if my_hand == pc_hand
      puts "結果はあいこです。"
    elsif (my_hand == 0 && pc_hand == 1) || (my_hand == 1 && pc_hand == 2) || (my_hand == 2 && pc_hand == 0)
      puts "結果はあなたの勝ちです。"
    elsif (my_hand == 0 && pc_hand == 2) || (my_hand == 1 && pc_hand == 0) || (my_hand == 2 && pc_hand == 1)
      puts "結果はあなたの負けです。"
    end
  end
end

jyanken = Jyankan.new()  #「jyanken」の変数にclassの変数「Janken」のnewとして立ち上げ(def initialize()を行っている)
jyanken.judgement        #「class」に対して「judgement」の変数を割り当てている(ddef judgementを行っている)