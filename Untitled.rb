require "pry"
class Personal
  attr_accessor :transaction, :current_balance
  @total_cost = []
  def initialize payee, amount, date, catagory
    @payee = payee
    @amount = amount
    @date = date
    @catagory = catagory
  end
  def transaction(payee,amount)
    total_cost.push(amount - payee)
  end
end

binding.pry
puts "end of file"
