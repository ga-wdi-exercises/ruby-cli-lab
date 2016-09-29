class Expense
  attr_reader :amt, :descr, :paid_by, :date, :share, :category
  @@all = []

  def self.all
    return @@all
  end

  def self.print_all(arr = @@all)
    puts
    arr.each {|exp| exp.print}
    puts
    return nil
  end

  def self.lookup_by(property, value)
    @@all.select{|expense| expense.instance_variable_get("@#{property}") == value}
  end

  def initialize(amt, descr, paid_by, date, category, share = amt.to_f/User.all.length) #default share is an even split between users
    @amt = amt.to_f
    @descr = descr
    @paid_by = User.lookup(paid_by) #crossing class streams again. Hope this is okay!
    @date = Date.strptime(date, "%m/%d/%y")
    @share = share.to_f # how much of this expense the payer is responsible for. Will be used to calculate totals later
    @owed_by_others = (@amt - @share)/(User.all.length - 1)
    @category = category
    Month.add_expense(self)
    @paid_by.balance_debt(@owed_by_others)
    @@all << self
  end

  def print_date #prints a readable version of the date
    "#{@date.mon}/#{@date.day}/#{@date.year}"
  end

  def print
    puts (@descr + " (#{self.print_date})").ljust(25) + @amt.to_s.ljust(8) + "##{@category}"
  end
end
