class Transaction

	attr_accessor :payee, :initial_amount, :balance, :new_amount, :all_transactions
  @@all_transactions = []
  @@balance = 0
  @@categories = ["test"]

	def initialize(payee, initial_amount, category)
		@payee = payee
		@initial_amount = initial_amount
		@category = category
		@@categories << category
		@@balance += initial_amount
		@@all_transactions << self
	end
	
	def change_amount(new_amount) 
	  @new_amount = new_amount
	  @@balance += @new_amount
  	@@balance -= @initial_amount
  	@initial_amount = @new_amount
  end
  
  def self.categories
    @@categories
  end
  
	def payee
		@payee
	end

	def amount
		@initial_amount
	end
	
	def self.all
	  @@all_transactions
	end
	
  def self.balance
	  @@balance
  end
	
end

test = Transaction.new("test", 2, "savings")
while true
  
  p "'new transaction' | 'balance' | 'change amount' | 'history'"
  input = gets.chomp
  
  if input == "new transaction"
    p "Enter payee"
    payee = gets.chomp.to_s
    p "Enter amount"
    initial_amount = gets.chomp.to_i
    p "Enter category"
    category = gets.chomp.to_s
    
    instance = Transaction.new(payee, initial_amount, category)
    
  elsif input == "balance"
    p "Your current balance is #{Transaction.balance}"
    
  elsif input == "change amount"
    p "Enter new amount for this transaction"
    num = gets.chomp.to_i
    instance.change_amount(num)
    
  elsif input == "history"
    p Transaction.all
      
  elsif input == "break"
    break
  end

end
