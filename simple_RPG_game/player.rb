# require_relativeは、現在のファイルからの相対パスで指定されたファイルを読み込む
require_relative 'character'

class Player < Character
  attr_reader :potions

  def initialize(name, hp, attack)
    # super: 親クラス(Character)のinitializeメソッドを呼び出す。初期化を親クラスに任せる
    super(name, hp, attack)
    @potions = 3
  end

  def use_potion
    if @potions > 0
      @hp += 20
      @potions -= 1
      puts "#{@name}はポーションを使用した。HPが20回復！残りHP：#{@hp}, 残りポーション：#{@potions}"
    else
      puts "ポーションがありません！"
    end
  end
end
