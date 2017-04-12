# require 'pry'
require 'date'

class Transaction
  attr_accessor :payee, :amount, :category, :date, :type
  def initialize(payee, amount, category, type)
    @payee = payee
    @amount = amount
    @category = category
    @date = Time.now
    @type = type
  end
end

# binding.pry
