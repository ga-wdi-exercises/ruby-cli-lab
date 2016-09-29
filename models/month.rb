class Month
  attr_reader :month, :year, :expenses, :reconciled
  @@all = []
  @@months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

  def Month.add_expense(expense)
    month = expense.date.mon
    year = expense.date.year
    # add an expense to the corresponding Month instance
    # should be able to do this automatically based on the date
    if Month.lookup(month, year) == nil
      # if that month doesn't exist, create it
      Month.new(month, year)
      Month.add_expense(expense)
    else
      # add expense to that month
      Month.lookup(month, year).expenses << expense
      return Month.lookup(month, year)
    end
  end

  def Month.lookup(month, year)
    @@all.find{|instance| instance.month == month && instance.year == year}
  end

  def Month.all
    return @@all
  end

  def initialize(month, year)
    @month = month
    @year = year
    @expenses = []
    @reconciled = false
    @@all << self
  end

  def print_name
    p "#{@@months[@month + 1]} #{@year}"
  end

  def print_expenses
    Expense.print_all(@expenses)
  end


end
