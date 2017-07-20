require_relative 'models'

alex = Account.new('Alex', 'checking')
alex.trans('Bob', 200, 10, 1, 'food')
alex.trans('Joe', 100, 2, 12, 'entertainment')
alex.trans('Ben', 500, 8, 22, 'food')


# require 'pry'
input = ''

while input != 'exit'
puts 'Welcome to your Personal Finance Program'
puts 'What would you like to do?'
puts 'Press 1 to view transactions'
puts 'Press 2 to view balance'
puts 'Press 3 to edit transactions'
puts 'Press 4 to delete transactions'
puts 'Press 5 to add a new transaction'
puts 'Type exit to leave program'

input = gets.chomp

case input

when '1'
  puts 'Type 1 to view all transactions'
  puts 'Type 2 to view transactions by category'
  puts 'Type 3 to view balance by category'

  input2 = gets.chomp
  case input2

  when '1'
    alex.alltrans

  when '2'
    puts 'What category would you like to view?'
    category = gets.chomp
    alex.filter(category)

  when '3'
    puts 'What category would you like to view?'
    category = gets.chomp
    alex.total(category)
  end

when '2'
 alex.balance

when '3'
  alex.edit

when '4'
  alex.delete

when '5'
  puts 'Who is the payee?'
  payee = gets.chomp
  puts 'What was the amount?'
  amount = gets.chomp.to_i
  puts 'What was the month?'
  month = gets.chomp.to_i
  puts 'What was the day?'
  day = gets.chomp.to_i
  puts 'What was the category?'
  category = gets.chomp

  alex.trans(payee, amount, month, day, category)
end
end
# binding.pry
