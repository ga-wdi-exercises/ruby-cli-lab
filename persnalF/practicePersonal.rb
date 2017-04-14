  require "pry"
  class Personal
    attr_accessor :payee,:amount, :catagory, :date
    def initialize payee, amount, catagory
      @payee = payee
      @amount = amount
      @catagory = "catagory"
      @date = "date"
      @total = 0
    end
    def transaction(payee,amount,catagory,date)
      puts "You make this transaction:  payment make #{@payee} deposit amount #{@amount}  catagory #{@catagory}
      date#{@date}"
    end
    def transaction_check(catagory)
      if catagory == "rent"
        puts"we found this list on this catagory #{@catagory}payee $#{@payeee}deposit#{@amount}date #{@date}"
      else
        puts "sorry there is no transaction"
      end
    end
    def balance_account
      @total = @amount -@payee
      if @total < 0
        puts" your Acount has zero balance"
      puts "you Acount balance is #{@total}"
    end
  end
end


  binding.pry
