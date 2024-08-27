require_relative 'account'

class SavingsAccount < Account
  def initialize(account_number, initial_balance = 0, interest_rate = 0.01)
    super(account_number, initial_balance)
    @interest_rate = interest_rate
  end

  def add_interest
    interest = @balance * @interest_rate
    @balance += interest
    puts "利息が追加されました: #{interest}円. 新しい残高: #{@balance}円"
  end
end