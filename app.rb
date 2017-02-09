require "pry"

class Banker

  attr_accessor :checking, :savings, :checking_date, :savings_date

  def initialize(name)
    @name = name
    @checking = []
    @checking_date = []
    @savings = []
    @savings_date = []

  end


  def transaction_checking(amt,date)
      @checking << amt
      @checking_date << date.to_s
  end

  def transaction_savings(amt,date)
      @savings << amt
      @savings_date << date.to_s
  end

  def check_transaction_checking
      puts @checking
      puts @checking_date
  end

  def check_transaction_savings
      puts @savings
      puts @savings_date
  end

  def check_balance_checking
      puts @checking.sum
  end

  def check_balance_savings
      puts @savings.sum
  end

end

binding.pry
