$balance = 0

class Debit
  attr_accessor :paid_to, :amount, :date, , :category, :debits
  @@debits = []
  def Debit.show_history
    puts "These are your past debit transactions: #{@@debits}."
  end
  def initialize(amount, paid_to, date, category)
    @amount = amount
    @paid_to = paid_to
    @date = date
    @category = category
    $balance = $balance - @amount
    @@debits.push(self)
    puts "You've successfully paid $#{@amount} for #{@paid_to}. Your new balance is $ #{$balance}. You have made #{@@debits.length} debits so far. "
  end
end

class Credit
  attr_accessor :paid_from, :amount, :date, :category, :credits
  @@credits = []
  def Credit.show_history
    puts "These are your past credit transactions: #{@@credits}."
  end

  def initialize(amount, paid_from, date, category)
    @amount = amount
    @paid_from = paid_from
    @date = date
    @category = category
    $balance = $balance + @amount
    @@credits.push(self)
    puts "You've successfully deposited $#{@amount} from #{@paid_from}. Your new balance is $ #{$balance}. You have made #{@@credits.length} deposit so far. "
  end
end
