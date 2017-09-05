class Line
attr_reader :transaction

  def initialize(transaction)
    @transaction = transaction
  end

  def create
    case transaction[:transaction]
    when :deposit
      return "#{transaction[:date]} || #{transaction[:amount]}  || || #{transaction[:balance]}"
    when :withdrawal
      return "#{transaction[:date]} || || #{transaction[:amount]} || #{transaction[:balance]}"
    else
      return 'transaction error'
    end
  end

end
