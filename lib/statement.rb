class Statement

  def initialize(account)
    @account = account
  end

  def print_header
    puts "date || credit || debit || balance"
  end

  def print_body
    @account.transaction_history do | transaction |

    end
  end

end
