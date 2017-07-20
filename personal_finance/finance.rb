require 'pry'

class Finance
  attr_reader :name, :type

  def initialize (account_holder, account_type)
    @name = account_holder
    @type = account_type
  end

  def transaction

  end
end

test = Finance.new('Kendall', 'Checkings')
puts 'end of program'

# enter transaction
  # payee name
  # payee amount
  # date
  # category
# push transaction to list of transactions
  # filtering
  # see transaction history
  # edit transaction information
  # delete transactions
# current balance



# Users should be able to enter their transactions (which have a payee, an
# amount, a date, and a category). They can see a list of all transactions, edit /
# delete transactions, and see their current balance.
#
# Users should be able to look at transactions by category (i.e. filtering), and
# see the total 'cost' of transactions in that category.
