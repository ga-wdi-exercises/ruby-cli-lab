
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
       puts "Welcome to Wiese Bank #{@clients}"
        puts "How may i help you?"
        puts "Would you like to make a withdrawl(w),deposit(d) or see your balance(b)?"
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
      end
      transactions #will call the method and will run ultil the dawn
  end
  def deposit(amount)
     @balance += amount
  end
  def withdrawl(amount)
    @balance -= amount
  end
end

luis = Accounts.new("Luis Wiese", 1000)
