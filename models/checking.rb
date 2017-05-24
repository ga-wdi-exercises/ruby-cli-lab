class Checking < Transaction
	attr_accessor :category
	def initialize(initial_payee, initial_amount, initial_date)
    super(initial_payee, initial_amount, initial_date)
    @category = "Checking"
  end
end
