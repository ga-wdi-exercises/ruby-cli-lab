require "pry"

class Transaction
  attr_accessor :payee, :amount, :date, :category
  @@transactions = []
  @@balance = 0

  def self.see_transactions
    @@transactions
  end

  def self.see_balance
    @@balance
  end

  def initialize payee, amount, category
    @payee = payee
    @amount = amount
    @category = category
    @@transactions.push(self)
    @@balance += amount
  end

  def edit_transaction
    puts "Enter field to be edited"
    edit = gets.chomp
    if edit == "payee"
      puts "Enter new payee"
      new_payee = gets.chomp
      @@transactions[:payee] = new_payee
    elsif edit == "amount"
      puts "Enter new amount"
      new_amount = gets.chomp.to_i
      @@transactions[@amount] = new_amount
      @@balance += (new_amount - amount)
    elsif edit == "category"
      puts "Enter new category"
      new_category = gets.chomp
      @@transactions[:category] = new_category
    end
  end

  def delete_transaction
    @@transactions.pop(self)
  end

end

binding.pry
