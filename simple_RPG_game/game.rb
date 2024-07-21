# 必要なクラスを読み込む

require_relative 'player'
require_relative 'enemy'

class Game
  def initialize
    @player = Player.new("勇者", 100, 20)
    @enemies = [
      Enemy.new("スライム", 50, 10),
      Enemy.new("ドラキー", 80, 15)
    ]
  end

  def start
    puts "簡単なRPGゲームを開始します"
    @enemies.each do |enemy|
      battle(@player, enemy)
      break unless @player.alive?
    end

    if @player.alive?
      puts "おめでとうございます。全ての敵を倒しました"
    else
      puts "ゲームオーバー。。。"
    end
  end

  private # クラスの内部実装を隠蔽し、外部からの不正なアクセスを防ぐ

  def battle(player, enemy)
    puts "\n#{enemy.name}が現れた"

    while player.alive? && enemy.alive?
      player_turn(player, enemy)
      enemy_turn(player, enemy) if enemy.alive?
    end

    puts "\n戦闘終了"
  end

  def player_turn(player, enemy)
    puts "\nプレイヤーのターン"
    puts "1: 攻撃 2: ポーションを使う"
    choice = gets.chomp.to_i

    case choice
    when 1
      enemy.take_damage(player.attack)
    when 2
      player.use_potion
    else
      puts "無効な選択です。攻撃を行います。"
      enemy.take_damage(player.attack)
    end
  end

  def enemy_turn(player, enemy)
    puts "\n敵のターン"
    player.take_damage(enemy.attack)
  end
end