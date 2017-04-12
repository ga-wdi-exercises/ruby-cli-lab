require 'pry'
require 'date'

class Transaction
  attr_accessor :amount, :category, :date, :type
  def initialize(amount, category, type)
    @amount = amount,
    @category = category,
    @date = DateTime.now,
    @type = type
  end
end

binding.pry
