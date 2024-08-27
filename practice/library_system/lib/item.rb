# 全てのメディアアイテムの基底クラス
class Item
  attr_reader :title, :item_id
  attr_accessor :checked_out # インスタンス変数check_outに対する読み取りメソッドと書き込みメソッドの両方を定義する

  def initialize(title, item_id)
    @title = title
    @item_id = item_id
    @checked_out = checked_out
  end

  def check_out
    if @checked_out
      puts "このアイテムはすでに貸し出されています"
    else
      @checked_out = true
      puts "#{@title}を貸し出しました。"
    end
  end

  def check_in
    if @checked_out
      @checked_out = false
      puts "#{title}が返却されました"
    else
      puts "このアイテムはすでに返却されています"
    end
  end

  def display_details
    puts "タイトル： #{title}"
    puts "ID： #{@item_id}"
    puts "状態： #{@checked_out ? "貸出中" : "在庫あり"}"
  end
end