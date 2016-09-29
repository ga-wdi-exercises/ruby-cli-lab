require_relative "models/expense"
require_relative "models/user"
require_relative "models/month"
require 'date'

tim = User.new("Tim")
jack = User.new("Jack")
eggs = Expense.new(4, "eggs", "tim", "9/28/16", "groceries")
milk = Expense.new(3, "milk", "tim", "8/26/16", "groceries")
bags = Expense.new(15, "trash bags", "jack", "9/26/16", "home")
sept = Month.new(9, 2016)

require "pry"
binding.pry
