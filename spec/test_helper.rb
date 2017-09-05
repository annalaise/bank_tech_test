def add_funds
  account.deposit(1000)
end

def withdraw_funds
  account.withdrawal(250)
end

def print_statement
  statement.print_statement
end

def transactions_mock
  dates = ['10/01/2012', '13/01/2012', '14/01/2012']
  transactions = [
    { date: dates[0], transaction: :deposit, amount: 1000, balance: 1000 },
    { date: dates[1], transaction: :deposit, amount: 2000, balance: 3000 },
    { date: dates[2], transaction: :withdrawal, amount: 500, balance: 2500 }
  ]
  transactions
end

def transaction_deposit
  { date: '10/01/2012', transaction: :deposit, amount: 1000, balance: 1000 }
end

def transaction_withdrawal
  { date: '14/01/2012', transaction: :withdrawal, amount: 500, balance: 2500 }
end
