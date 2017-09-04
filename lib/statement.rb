class Statement

  def initialize(account)
    @account = account
  end

  def print_statement
    header
    body
  end

private

  def header
    puts "date || credit || debit || balance"
  end

  def body
    @account.transaction_history.reverse_each do | transaction |
    case transaction[:transaction]

      when "deposit"
        puts "#{transaction[:date]} || #{transaction[:amount]}  || || #{transaction[:balance]}"

      when "withdrawal"
        puts "#{transaction[:date]} || || #{transaction[:amount]} || #{transaction[:balance]}"

      else
        return "transaction error"
      end
    end
  end

end
