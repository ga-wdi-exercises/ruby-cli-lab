puts "Welcome to Wiese Bank #{@clients}"
puts "How may i help you?"

class Accounts
  attr_accessor :clients, :balance
  @@all = []

  def initialize (clients, balance)
    @clients = clients
    @balance = balance
    @@all.push(self)
    transactions
  end

  def transactions
        puts "Would you like to make a withdrawl(w),deposit(d), see your balance(b) or cancel(c)?"
        @type = gets.chomp
        case @type
          when "w"
          puts "you current balance is #{@balance}"
          puts "Please enter amount"
          amount = gets.chomp.to_i
          withdrawl(amount)
          when "d"
          puts "you current balance is #{@balance}"
          puts "Please enter amount"
          amount = gets.chomp.to_i
          deposit(amount)
          when "b"
          puts "you current balance is #{@balance}"
          when "c"
          puts "Thank you for making bussines with us"
          puts "Good bye"
        end

  def another_transaction
        puts "Would you like to make another transactions yes (y) or no (n)"
        @type2 = gets.chomp
        case @type2
          when "y"
          puts "Would you like to make a withdrawl(w),deposit(d), see your balance(b) or cancel(c)?"
            @type3 = gets.chomp
            case @type3
              when "w"
                puts "you current balance is #{@balance}"
                puts "Please enter amount"
                amount = gets.chomp.to_i
                withdrawl(amount)
                when "d"
                puts "you current balance is #{@balance}"
                puts "Please enter amount"
                amount = gets.chomp.to_i
                deposit(amount)
                when "b"
                puts "you current balance is #{@balance}"
                when "c"
                puts "Thank  you for making bussines with us"
                puts "Good bye"
            end
          when "n"
          puts "Thank  you for making bussines with us"
          puts "Good bye"
        end
  end
      another_transaction
      transactions #will call the method and will run ultil dawn
  end
  def deposit(amount)
     @balance += amount
  end
  def withdrawl(amount)
    @balance -= amount
  end
end

luis = Accounts.new("Luis Wiese", 1000)
