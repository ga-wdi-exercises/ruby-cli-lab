require "pry"

class Enter_Transaction
  attr_accessor :payee, :input, :date, :category
    @@all = []

    def initialize
      puts "Enter a payee."
        @payee = gets.chomp
      puts "Enter an amount."
        @input = gets.chomp
      puts "Enter the date."
        @date = gets.chomp
      puts "Enter your category."
        @category = gets.chomp
      @@all << self
      end
end

# class Menu














binding.pry
