class Month
  attr_reader
  @@all = []
  @@months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

  def Month.add_expense(expense)
    # add an expense to the corresponding Month instance
    # should be able to do this automatically based on the date
    # if that month doesn't exist, create it

  end

  def initialize(index, year)
    @@all << self
    @month = index
    @year = year
    @expenses = []
    @reconciled = false
  end

  def print_name
    p "#{@@months[@month]} #{@year}"
  end


end
