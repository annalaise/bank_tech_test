# Bank Tech Test

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Solution

### Planning

To plan my solution, I created a **Domain Model** (initially with classes for Withdrawal and Deposit, but I have since iterated)

|Noun | Verb |
|--------|--------|
| account | create <br> has_balance <br> reduces_balance <br> increases_balance <br> records_transactions |
| statement | prints_header <br> print_transactions |


### Approach



### Stack

This application was built using the following:
* Ruby 2.4.0
* Rspec 3.6
* Rubocop
* Simple Cov

### Test Coverage

![Image](http://i.imgur.com/GWo9wXE.png)

### How to Use

Clone this repo

```
git clone git@github.com:annalaise/bank_tech_test.git
bundle install
rspec
```

To see end to end features, within the cloned directory open IRB and paste the following:
```
require './lib/account.rb'
require './lib/statement.rb'
account = Account.new
statement = Statement.new(account)
account.deposit(1000)
account.deposit(2000)
account.withdrawal(500)
statement.print_statement
```
