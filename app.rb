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
    puts "Please classify this deposit: P = paycheck; G = gift; L = loan; O = other."
      classification = gets.chomp.downcase
        if classification == "p"
          category = "Paycheck"
        elsif classification == "g"
          category = "Gift"
        elsif classification == "l"
          category == "Loan"
        elsif classification == "o"
          category == "Other"
        end
      newCredit = Credit.new(amount, paid_from, date, category)
  elsif value == 3
    Credit.show_history
    puts "Would you like to view your history by category? Y/N"
      response = gets.chomp.downcase
      if response == "y"
        puts "Please select a category to view: P = paycheck; G = gift; L = loan; O = other."
          response == gets.chomp.downcase
            if response == "p"
              Credit.credit_by_paycheck
            elsif response == "g"
              Credit.credit_by_gift
            elsif response == "l"
              Credit.credit_by_loan
            elsif response == "o"
              Credit.credit_by_other
            end
      elsif response == "n"
        Credit.show_history
      end
  elsif value == 4
    puts "How much would you like to withdraw?"
      amount = gets.chomp.to_i
    puts "For your records, what is the destination or purpose of this cash transfer?"
      paid_to = gets.chomp
    puts "Please enter the date you would like to make this withdraw."
      date = gets.chomp
    puts puts "Please classify this withdrawal: L = living expenses; E = entertainment; S = student loan payment; O = other."
      classification = gets.chomp.downcase
        if classification == "l"
          category = "Living Expenses"
        elsif classification == "e"
          category = "Entertainment"
        elsif classification == "s"
          category == "Student Loans"
        elsif classification == "o"
          category == "Other"
        end
      new_debit = Debit.new(amount, paid_from, date, category)
  elsif value == 5
      Debit.show_history
      puts "Would you like to view your history by category? Y/N"
        response = gets.chomp.downcase
        if response == "y"
          puts "Please select a category to view: L = living expenses; E = entertainment; S = student loan payment; O = other."
            response == gets.chomp.downcase
              if response == "l"
                Debit.debit_by_living_expense
              elsif response == "e"
                Debit.debit_by_entertainment
              elsif response == "s"
                Debit.debit_by_loans
              elsif response == "o"
                Debit.debit_by_other
              end
        elsif response == "n"
          Debit.show_history
        end
  elsif value == 6
      puts "Thank you, we hope to see you again soon."
  end
end
