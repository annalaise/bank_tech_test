class Statement
  attr_reader :transactions, :linebuilder
  HEADER = "date || credit || debit || balance"

  def initialize(transactions, linebuilder)
    @transactions = transactions
    @linebuilder = linebuilder
  end

  def print_statement
    puts HEADER
    line_itemiser(generate_body)
  end

  private

  def line_itemiser(arr)
    arr.each { |string| puts string }
  end

  def generate_body
    @linebuilder.generate(@transactions)
  end

end
