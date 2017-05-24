$balance = 0

class Debit
  attr_accessor :paid_to, :amount, :date, :category, :debits
  @@debits = []
  def Debit.show_history
    debit_list = @@debits.map.with_index(1){|element,index| "#{index}. #{element}"}
    puts "These are your past debit transactions: #{debit_list}."
  end

  def Debit.by_living_expense
    living_expense_transactions = @@debits.select do |debit|
      debit.category == "Living Expenses"
      puts living_expense_transactions
    end
  end

  def Debit.by_entertainment
    entertainment_transactions = @@debits.select do |debit|
      debit.category == "Entertainment"
      puts entertainment_transactions
    end
  end

  def Debit.by_loans
    loans_transactions = @@debits.select do |debit|
      debit.category == "Student Loans"
      puts loans_transactions
    end
  end

  def Debit.by_other
    other_transactions = @@debits.select do |debit|
      debit.category == "Other"
      puts other_transactions
    end
  end

  def initialize(amount, paid_to, date, category)
    @amount = amount
    @paid_to = paid_to
    @date = date
    @category = category
    $balance = $balance - @amount
    @@debits.push(self)
    puts "You've successfully paid $#{@amount} for #{@paid_to}. The category of this deposit is #{@category}. Your new balance is $ #{$balance}. You have made #{@@debits.length} debits so far. "
  end

end
##END OF DEBIT CLASS

class Credit
  attr_accessor :paid_from, :amount, :date, :category, :credits
  @@credits = []
  def Credit.show_history
    credit_list = @@credits.map.with_index(1){|element,index| "#{index}. #{element}"}
    puts "These are your past credit transactions: #{credit_list}."
  end

  def Credit.by_paycheck
    paycheck_transactions = @@credits.select do |credit|
      credit.category == "Paycheck"
      puts paycheck_transactions
    end
  end

  def Credit.by_gift
    gift_transactions = @@credits.select do |credit|
      credit.category == "Gift"
      puts gift_transactions
    end
  end

  def Credit.by_loan
    loan_transactions = @@credits.select do |credit|
      credit.category == "Loan"
      puts loan_transactions
    end
  end

  def Credit.by_other
    other_transactions = @@credits.select do |credit|
      credit.category == "Other"
      puts other_transactions
    end
  end

  def initialize(amount, paid_from, date, category)
    @amount = amount
    @paid_from = paid_from
    @date = date
    @category = category
    $balance = $balance + @amount
    @@credits.push(self)
    puts "You've successfully deposited $#{@amount} from #{@paid_from}. The category of this credit is #{@category}. Your new balance is $ #{$balance}. You have made #{@@credits.length} deposit so far."
  end

end
