Global Variables
- name
- Account balance?

Interface should show
Hello, name! Please select what you would like to do from the list of options below:

To view your balance, press 0
  show global Variable
To complete a credit transaction (deposit money), press 1
To complete a debit transaction (send money to another), press 2
To view a list of past transactions, press 3
To end this session, press 4


Parent Class
Current balance
Debit_history[]
Credit_history

Debit Class (type, amount, date)


Credit Class (type, payee, amount, date)

class Account
  attr_accessor :credits, :debits, :balance
  def initialize
    @@credits = []
    @@debits = []
    @@balance = 0
  end

  def show_balance
    puts "Your current balance is #{balance}."
  end

  def show_history
    puts "Here are your most recent credit transactions: #{@@credits}"
    puts "Here are your most recent debit transactions: #{@@debits}"
  end

end
