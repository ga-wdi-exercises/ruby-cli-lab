require "pry"
class Menu
  # puts "Enter username, please."
  # username=gets.chomp
  # puts "Enter password, please."
  # password=gets.chomp
  @@debitCard= []
  @@creditCard=[]
  @@totaldebit=0
  @@totalcredit=0
  $eachTransaction={}


  def initialize
    @@activity=activity
    $debitCredit=debitCredit
    $typesOfCard=[]
    $cardBalance=0

    # @@amount=amount
  end

  def self.basicOptions
    puts "Choose one of the following option:"
    puts "1. Debit"
    puts "2. Credit"
    debitCredit=gets.chomp


    if ["1","2"].include? debitCredit
        if debitCredit=="1"
          puts "You choose Your Debit Card"
          $typesOfCard=@@debitCard
          $cardBalance=@@totaldebit

        elsif debitCredit=="2"
          puts "You choose Your Credit Card"
          $typesOfCard=@@creditCard
          $cardBalance=@@totalcredit
        else
          puts "Something went wrong, please contact office."
        end
      puts "Enter one of the following options"
      puts "1. Deposit"
      puts "2. Withdraw"
      puts "3. Current Balance"
      puts "4. Transaction History"
      puts "5. Edit Transaction"

      activity=gets.chomp
      if activity =="1"
        Transaction.deposit
      elsif activity=="2"
        Transaction.withdraw
      elsif activity=="3"
        Transaction.currentBalance
      elsif activity=="4"
        Transaction.transactionHistory
      elsif activity=="5"
        Transaction.editTransaction
      else
        puts "Invalid Option"
        Menu.basicOptions
      end
      # break
    else
      puts "Invalid Option"
      Menu.basicOptions
    end
  end
end

class  Transaction < Menu
    @number=1
   def Transaction.deposit
     puts"Enter the amount you want to deposit"
     damount=gets.chomp
     timeOfTransaction=Time.now.strftime("%Y-%m-%d").split("-")
     transactionDetail = {}
     @number=@number++
      transactionDetail[:TransactionNumber]= @number
      transactionDetail[:Transaction]= damount
      transactionDetail[:Year] = timeOfTransaction [0]
      transactionDetail[:Month] = timeOfTransaction [1]
      transactionDetail[:Date] = timeOfTransaction [2]

     $typesOfCard.push(transactionDetail)
     puts "#{$typesOfCard}"
     $cardBalance=$cardBalance.to_i + damount.to_i
     puts "Your current balance is #{$cardBalance}"
     Menu.basicOptions
   end
   def Transaction.withdraw
     puts"Enter the amount you want to withdraw"
     wamount=gets.chomp
     timeOfTransaction = Time.now.strftime("%Y-%m-%d").split("-")
     transactionDetail = {}
      @number=@number++
      transactionDetail[:TransactionNumber]= @number
      transactionDetail[:Transaction]= "-#{wamount}"
      transactionDetail[:Year] = timeOfTransaction [0]
      transactionDetail[:Month] = timeOfTransaction [1]
      transactionDetail[:Date] = timeOfTransaction [2]

     $typesOfCard.push(transactionDetail)
     puts "#{$typesOfCard}"
     $cardBalance=$cardBalance.to_i-wamount.to_i
    puts "Your current balance is #{$cardBalance}"
     Menu.basicOptions
   end
   def Transaction.currentBalance
     puts "Your current balance is #{$cardBalance}"
     Menu.basicOptions
   end
   def Transaction.transactionHistory
     puts "All transaction you performed under #{$debitCredit} is listed below: \n"
     puts "#{$typesOfCard}"
     puts"Enter date of transaction history you want"
     puts"In the following format: DD/MM/YY"
     puts"Sorry, for now please enter the date only"
     dateToFilter=gets.chomp.to_a
    #  $typesOfCard.find_all do|eachTrans|
    #    $typesOfCard[eachTrans].[:Date] == dateToFilter
    #     # puts "see #{$typesOfCard[eachTrans]}"
    #  end
     Menu.basicOptions
   end
   def Transaction.editTransaction
     puts "All transaction you performed under is listed below: \n"
     puts "#{$typesOfCard}"
     puts "Please the transaction number you want to delete please."
     deleteTrans=gets.chomp.to_i-1
     $typesOfCard.delete_at(deleteTrans)
     puts "#{$typesOfCard}"
     Menu.basicOptions
   end

end

Menu.basicOptions

binding "pry"

#
# I want to make each elemnt in the array in new line
# I want to correct the current balance working well
