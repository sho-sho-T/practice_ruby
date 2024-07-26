class Member
  attr_reader :name, :member_id

  def initialize(name, member_id)
    @name = name
    @member_id = member_id
    @borrowed_items = []
  end

  def borrow_item(item)
    @borrowed_items << item
    puts "#{@name}が#{item.title}を借りました"
  end

  def return_item(item)
    if @borrowed_items.include?(item)
      @borrowed_items.delete(item)
      puts "#{@name}が#{item.title}を返却しました。"
    else
      puts "#{@name}はこのアイテムを借りていません。"
    end
  end

  def display_borrowed_items
    if @borrowed_items.empty?
      puts "#{@name}は現在何も借りていません。"
    else
      puts "#{@name}が借りているアイテム："
      @borrowed_items.each do |item|
        puts "- #{item.title}"
      end
    end
  end
end