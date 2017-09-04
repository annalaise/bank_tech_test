class Statement

  attr_reader :transactions

  def initialize(transactions)
    @transactions = transactions
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
    @transactions.reverse_each do | transaction |
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
