require_relative 'account'

class CheckingAccount < Account
  def initialize(account_number, initial_balance = 0, overdraft_limit = 100)
    super(account_number, initial_balance)
    @overdraft_limit = overdraft_limit
  end

  def withdraw(amount)
    if amount > 0 && amount <= (@balance + @overdraft_limit)
      @balance -= amount
      puts "出金完了: #{amount}円. 新しい残高: #{@balance}円"
    else
      puts "無効な出金額または残高不足です"
    end
  end
end