class Member
  attr_reader :name, :member_id

  def initialize(name, member_id)
    @name = name
    @member_id = member_id
    @borrowed_items = []
  end

  def borrow_item(item)
    @borrow_items << item
    puts "#{@name}が#{item.title}を借りました"
  end

  def display_borrowed_items
    if @borrowed_items.empty?
      puts "#{@name}は現在何も借りていません。"
    else
      puts "#{@name}が借りているアイテム："
      @borrow_items.each do |item|
        puts "- #{item.title}"
      end
    end
  end
end