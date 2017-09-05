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
  [{ date: '10/01/2012', transaction: :deposit, amount: 1000, balance: 1000 },
   { date: '13/01/2012', transaction: :deposit, amount: 2000, balance: 3000 },
   { date: '14/01/2012', transaction: :withdrawal, amount: 500, balance: 2500 }]
end

def transactions_incorrect_format
  [{ date: '10/01/2012', transaction: :pizza, amount: 1000, balance: 1000 }]
end

def transaction_deposit
  { date: '10/01/2012', transaction: :deposit, amount: 1000, balance: 1000 }
end

def transaction_withdrawal
  { date: '14/01/2012', transaction: :withdrawal, amount: 500, balance: 2500 }
end

def linebuilder_mock
  ['14/01/2012 || || 500 || 2500', '13/01/2012 || 2000  || || 3000', '10/01/2012 || 1000  || || 1000']
end

def statement_output
  "date || credit || debit || balance\n14/01/2012 || || 500 || 2500\n13/01/2012 || 2000  || || 3000\n10/01/2012 || 1000  || || 1000\n"
end
