class User
  attr_reader :name
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
    @@all << self
  end



end
