require_relative "models/expense"
require_relative "models/user"
require_relative "models/month"
require 'date'

tim = User.new("Tim")
jack = User.new("Jack")
matt = User.new("Matt")
eggs = Expense.new(4, "eggs", "tim", "9/28/16", "groceries")
milk = Expense.new(3, "milk", "tim", "8/26/16", "groceries")
bags = Expense.new(15, "trash bags", "jack", "9/26/16", "home")
xbox = Expense.new(300, "xbox", "tim", "9/30/16", "entertainment")

require "pry"
binding.pry


#Tim logs an expense of $3000 (share: $1000)
# [running tally = $1000 per person]
# for each other person, check to see if Tim owes them money
  # subtract tally from whichever person owes the other more
  #  subtract that amount from running tally
    # tim owes Jack $100, so tally = $900
    # if
  # add expense to @owes hash
    #jack @owes = {:tim => 900}
