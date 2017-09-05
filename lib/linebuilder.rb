class LineBuilder
attr_reader :transactions

  def generate(transactions)
    transactions.reverse_each.map do |transaction|
      case transaction[:transaction]
      when :deposit
        return_deposit(transaction)
      when :withdrawal
        return_withdrawal(transaction)
      else
        raise 'transaction error'
      end
    end
  end

  private

  def return_deposit(transaction)
    "#{transaction[:date]} || #{transaction[:amount]}  || || #{transaction[:balance]}"
  end

  def return_withdrawal(transaction)
    "#{transaction[:date]} || || #{transaction[:amount]} || #{transaction[:balance]}"
  end

end
