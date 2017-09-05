class Line
attr_reader :transaction

  def initialize(transaction)
    @transaction = transaction
  end

  def generate
    case transaction[:transaction]
    when :deposit
      return_deposit(transaction)
    when :withdrawal
      return_withdrawal(transaction)
    else
      return 'transaction error'
    end
  end

  private

  def return_deposit(transaction)
    return "#{transaction[:date]} || #{transaction[:amount]}  || || #{transaction[:balance]}"
  end

  def return_withdrawal(transaction)
    return "#{transaction[:date]} || || #{transaction[:amount]} || #{transaction[:balance]}"
  end

end
