class Account

  attr_reader :balance

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def deposit(amount)
    increase_balance(amount)
    @transaction_history << { date: get_date, transaction: "deposit", amount: amount, balance: balance }
  end

  def withdrawal(amount)
    decrease_balance(amount)
    @transaction_history << { date: get_date, transaction: "withdrawal", amount: amount, balance: balance }
  end

  def transactions
    @transaction_history
  end

private
  def get_date
    (Time.now).strftime("%d/%m/%Y")
  end

  def decrease_balance(amount)
    @balance -= amount
  end

  def increase_balance(amount)
    @balance =+ amount
  end

end
