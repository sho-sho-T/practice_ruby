# 全体を管理するクラス

require_relative 'savings_account'
require_relative 'checking_account'
require_relative 'transaction'

class Bank
  def initialize
    @accounts = {}
  end

  def create_account(type, account_number, initial_balance = 0)
    # TODO: typeを追加する時にcase文を変更しなければならなくなったり色々良くないのでどうにかしたい
    case type
    when :savings
      @accounts[account_number] = SavingsAccount.new(account_number, initial_balance)
    when :checking
      @accounts[account_number] = CheckingAccount.new(account_number, initial_balance)
    else
      puts "無効な講座タイプです"
    end
  end

  def find_account(account_number)
    @accounts[account_number]
  end

  def deposit(account_number, amount)
    account = find_account(account_number)
    if account
      account.deposit(amount)
      record_transaction(account_number, "入金", amount)
    else
      puts "口座が見つかりません"
    end
  end

  def withdraw(account_number, amount)
    account = find_account(account_number)
    if account
      account.withdraw(amount)
      record_transaction(account_number, "出勤", -amount)
    else
      puts "口座が見つかりません"
    end
  end

  private

  def record_transaction(account_number, description, amount)
    transaction = Transaction.new(Time.now, description, amount)
    # ここでトランザクションを保存するロジックを実装する
    puts "取引記録： #{transaction}"
  end
end