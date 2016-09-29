require "pry"
class Category
  attr_accessor :cards, :name
  @@all = []

  def initialize(name)
    @name = name
    @cards = []
    @@all << self
  end
  def all_cat
    @@all
  end
  def self.list
    @@all.each do |category|
      puts category.name
    end
  end
  def self.find_by_name name
    @found = nil
    @@all.select {|category|
      category.name == name
    }[0]
  end
end

class Card
  def initialize(front, back)
    # attr_accessor :name, :front, :back #edits front and back of card
    @front = front #question
    @back = back #answer
  end
end

music = Category.new('music')
math  = Category.new('math')
music.cards.push(
  Card.new("1", "2")
)

puts "Choose a category"
puts Category.list
user_inputs = gets.chomp
Category.find_by_name("music")


# binding.pry
# puts "hi"
