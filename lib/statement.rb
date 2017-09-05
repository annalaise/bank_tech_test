class Statement
  attr_reader :transactions
  HEADER = "date || credit || debit || balance"

  def initialize(transactions)
    @transactions = transactions
  end

  def print_statement
    puts HEADER
    body
  end

  private

  def body
    @transactions.reverse_each do |transaction|
    case transaction[:transaction]
    when :deposit
      puts "#{transaction[:date]} || #{transaction[:amount]}  || || #{transaction[:balance]}"
    when :withdrawal
      puts "#{transaction[:date]} || || #{transaction[:amount]} || #{transaction[:balance]}"
    else
      return 'transaction error'
    end
    end
  end
end
