def add_funds
  account.deposit(1000)
end

def withdraw_funds
  account.withdrawal(250)
end

def print_statement
  statement.print_statement
end
