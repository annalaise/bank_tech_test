class Account

  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def deposit(amount)
    transaction_history << { date: get_date, transaction: "deposit", amount: amount }
    increase_balance(amount)
  end

  def withdrawal(amount)
    transaction_history << { date: get_date, transaction: "withdrawal", amount: amount }
    decrease_balance(amount)
  end

private
  def get_date
    return (Time.now).strftime("%d/%m/%Y")
  end

  def decrease_balance(amount)
    @balance -= amount
  end

  def increase_balance(amount)
    @balance += amount
  end

end
