class Transaction
	attr_accessor :type, :amount, :category
	attr_reader :date
	def initialize(initial_amount, initial_category, initial_type)
		time = Time.new
		@category = initial_category
		@amount = initial_amount.to_i
		@type = initial_type
		@date = time.strftime("%Y-%m-%d %H:%M:%S")
	end
end
