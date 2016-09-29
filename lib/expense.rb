class expense
  attr_reader :amt, :descr, :paid_by, :date, :share, :category
  @@all = []

  def self.all
    return @@all
  end

  def initialize(amt, descr, paid_by, date, share, category)
    @amt = amt
    @descr = descr
    @paid_by = paid_by
    @date = date
    @share = share
    @category = category
    @@all << self
  end

  def print_date #prints a readable version of the date

  end

end
