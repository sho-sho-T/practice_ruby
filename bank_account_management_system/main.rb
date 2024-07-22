require_relative 'bank'

bank = Bank.new

# 口座の作成
bank.create_account(:savings, "S123", 1000)
bank.create_account(:checking, "C456", 2000)

# 入金と出金の操作
bank.deposit("S123", 500)
bank.withdraw("C456", 1000)

# 口座情報の表示
savings_account = bank.find_account("S123")
checking_account = bank.find_account("C456")

savings_account.display_balance
checking_account.display_balance

# 普通預金口座に利息を追加
savings_account.add_interest