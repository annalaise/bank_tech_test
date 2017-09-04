class Account

  attr_accessor :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def deposit(amount)
    transaction_history << { date: get_date, deposit: amount }
    @balance += amount
  end

  def withdrawal(amount)
    transaction_history << { date: get_date, withdrawal: amount }
    @balance -= amount
  end

  private

  def get_date
    return (Time.now).strftime("%d/%m/%Y")
  end

end
