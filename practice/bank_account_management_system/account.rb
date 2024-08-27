class Account
  attr_reader :account_number, :balance

  def initialize(account_number, initial_balance = 0)
    @account_number = account_number
    @balance = initial_balance
  end

  def deposit(amount)
    if amount > 0
      @balance += amount
      puts "入金完了: #{amount}円. 新しい残高: #{@balance}円"
    else
      puts "無効な入金額です"
    end
  end

  def withdraw(amount)
    if amount > 0 && amount <= @balance
      @balance -= amount
      puts "出金完了: #{amount}円. 新しい残高: #{@balance}円"
    else
      puts "無効な出金額または残高不足です"
    end
  end

  def display_balance
    puts "口座番号 #{@account_number} の残高: #{@balance}円"
  end
end