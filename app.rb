require_relative "models/finance_models"

#Initial Greeting

value = 6
while value <= 6 do
puts "Hello. Thank you for using our banking services. Please select from the following menu of options.\n
To check your balance, please press 1.\n
To make a deposit, please press 2.\n
To see your past deposits, please press 3.\n
To make a withdraw, please press 4.\n
To see your past withdrawals, please press 5.\n
To finish with your session, please press 7."

value = gets.chomp.to_i
  if value == 1
    puts "Your current balance is $#{$balance}."
  elsif value == 2
    puts "How much would you like to deposit?"
      amount = gets.chomp.to_i
    puts "For your records, what is the source of this deposit?"
      paid_from = gets.chomp
    puts "Please enter the date you would like to make this deposit."
      date = gets.chomp
      newCredit = Credit.new(amount, paid_from, date)
  elsif value == 3
    Credit.show_history
  elsif value == 4
    puts "How much would you like to withdraw?"
      amount = gets.chomp.to_i
    puts "For your records, what is the destination or purpose of this cash transfer?"
      paid_to = gets.chomp
    puts "Please enter the date you would like to make this withdraw."
      date = gets.chomp
      new_debit = Debit.new(amount, paid_from, date)
  elsif value == 5
      Debit.show_history
  elsif value == 6
      puts "Thank you, we hope to see you again soon."
  end
end
