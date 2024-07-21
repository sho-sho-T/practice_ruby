# ゲーム内の全てのキャラクター（プレイヤーと敵）の基本となるクラス

class Character
  # attr_reader はインスタンス変数を外部から読み取り可能にするメソッドを自動的に定義
  attr_reader :name, :hp, :attack

  def initialize(name, hp, attack)
    @name = name
    @hp = hp
    @attack = attack
  end

  def take_damage(damage_received)
    @hp -= damage_received
    @hp = 0 if @hp < 0
    puts "#{@name}は#{damage_received}ダメージを受けた。残りHP: #{@hp}"
  end

  # メソッド名の末尾の?は、真偽値を返すメソッドであることを示すRubyの慣習
  def alive?
    @hp > 0
  end
end