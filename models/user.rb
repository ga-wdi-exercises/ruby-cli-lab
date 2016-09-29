class User
  attr_accessor :name, :owes
  @@all = []

  def self.all
    return @@all
  end

  def self.lookup(name)
    @@all.find {|user| user.name.downcase == name.downcase }
  end

  ####
  def initialize(name)
    @name = name
    @owes = {}
    @@all << self
  end

  def owes_basic
    self.owes.keys.map{|user| "#{user.name}: #{self.owes[user]}"}
  end

  def balance_debt(amount)
    # I CAN'T BELIEVE THIS WORKS
    other_users = @@all.reject{|user| user == self} #get an array of all other users
    other_users.each do |other|
      amt = amount # create a local variable for each other user we're looping over
      if self.owes[other] == nil # if logger doesn't owe money to the other user...
        other.owes[self] = amt # that user owes the logger amt
      else # if logger _does_ owe money to others...
        if amt <= self.owes[other] # if the amount is less than what we owe them
          self.owes[other] -= amt # reduce our debt by the amount
        else
          amt -= self.owes[other]
          self.owes[other] = 0
          other.owes[self] = amt
        end # /if-else
      end # /if-else
    end # /each
  end # /def



end
