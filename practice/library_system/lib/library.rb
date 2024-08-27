# 図書館会員を表すクラス

class Library
  def initialize
    @items = []
    @members = []
  end

  def add_item(item)
    @items << item
    puts "#{item.title}を図書館に追加しました"
  end

  def add_member(member)
    @members << member
    puts "#{member.name}を会員として登録しました"
  end

  def check_out_item(item_id, member_id)
    item = find_item(item_id)
    member = find_member(member_id)

    # TODO: 見にくい
    if item && member
      if item.checked_out
        puts "このアイテムは既に貸し出されています"
      else
        item.check_out
        member.borrow_item(item)
      end
    else
      puts "アイテムまたは会員が見つかりません"
    end
  end

  def check_in_item(item_id, member_id)
    item = find_item(item_id)
    member = find_member(member_id)

    if item && member
      if item.checked_out
        item.check_in
        member.return_item(item)
      else
        puts "このアイテムは既に返却されています。"
      end
    else
      puts "アイテムまたは会員が見つかりません。"
    end
  end

  def display_all_items
    @items.each do |item|
      item.display_details
      puts "--------------------"
    end
  end

  private

  def find_item(item_id)
    @items.find { |item| item.item_id == item_id}
  end

  def find_member(member_id)
    @members.find { |member| member.member_id == member_id}
  end
end