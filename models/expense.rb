class Expense
  attr_reader :amt, :descr, :paid_by, :date, :share, :category
  @@all = []

  def self.all
    return @@all
  end

  def self.lookup_by(property, value)
    @@all.select{|expense| expense.instance_variable_get("@#{property}") == value}
  end

  def initialize(amt, descr, paid_by, date, category, share = amt.to_f/User.all.length) #default share is an even split between users
    @amt = amt.to_f
    @descr = descr
    @paid_by = User.lookup(paid_by) #crossing class streams again. Hope this is okay!
    @date = Date.strptime(date, "%m/%d/%y")
    @share = share
    @category = category
    @@all << self
  end

  def print_date #prints a readable version of the date

  end

end
