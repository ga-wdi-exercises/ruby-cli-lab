class Transaction
	attr_accessor :payee, :amount, :date
	def initialize(initial_payee, initial_amount, initial_date)
		@payee = initial_payee
		@amount = initial_amount
		@date = initial_date
	end
end
