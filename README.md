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

**Domain Model**

|Noun | Verb |
|--------|--------|
| client | create <br> balance <br> transaction_history <br> |
| deposit | date <br> amount <br> record_transaction |
| withdrawal | date <br> amount <br> record_transaction|
| statement | print_header <br> print_transaction |


### Approach

How I solved the challenge here

This application was built using the following:
* Ruby 2.4.0
* Rspec 3.6
* Rubocop
* Simple Cov

### How to Use

Instructions for how to use go here
