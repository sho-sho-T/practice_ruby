class Transaction
  attr_reader :date, :description, :amount

  def initialize(date, description, amount)
    @date = date
    @description = description
    @amount = amount
  end

  def to_s
    "#{@date}: #{@description} - #{@amount}円"
  end
end