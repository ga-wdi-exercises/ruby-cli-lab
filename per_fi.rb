require "pry"

class Enter_Transaction
  attr_accessor :payee :input :date :category
    @@all = []
end
def initialize
  puts "Enter an amount."
  @input = gets.chomp
  puts "Enter a payee."
  @payee = gets.chomp
  puts "Enter the date."
  @date = gets.chomp
  puts "Enter your category."
  @category = gets.chomp
  @@all << self
end

class Menu















  binding.pry
