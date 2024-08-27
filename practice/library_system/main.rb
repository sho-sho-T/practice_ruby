require_relative 'lib/library'
require_relative 'lib/book'
require_relative 'lib/magazine'
require_relative 'lib/dvd'
require_relative 'lib/member'

# 図書館の作成
library = Library.new

# アイテムの追加
book1 = Book.new('1984', 'B001', 'George Orwell', '9780451524935')
book2 = Book.new('To Kill a Mockingbird', 'B002', 'Harper Lee', '9780446310789')
magazine1 = Magazine.new('National Geographic', 'M001', '2023年5月号')
dvd1 = DVD.new('Inception', 'D001', 'Christopher Nolan', 148)

library.add_item(book1)
library.add_item(book2)
library.add_item(magazine1)
library.add_item(dvd1)

# 会員の追加
member1 = Member.new('John Doe', 'M001')
member2 = Member.new('Jane Smith', 'M002')

library.add_member(member1)
library.add_member(member2)

# アイテムの貸し出しと返却
library.check_out_item('B001', 'M001')
library.check_out_item('D001', 'M002')
library.check_in_item('B001', 'M001')

# 全アイテムの表示
puts "\n図書館の全アイテム:"
library.display_all_items

# 会員の借りているアイテムの表示
puts "\n会員の借りているアイテム:"
member1.display_borrowed_items
member2.display_borrowed_items
