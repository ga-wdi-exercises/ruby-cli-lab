require 'pry'

#this is the ship class
class Ship
  attr_accessor :health
  attr_reader :id
  def initialize(health, id)
    @health = health
    @id = id
  end
end

#this generates the appropriate number of ships
ship_object = []
2.times do |x|
  x = Ship.new(5,(x+1))
  ship_object << x
end

#the 2d array generation method here is closely patterned on the one I used in project 1
board = []
10.times do |x|
  board << Array.new
  10.times do |y|
    board[x] << "sea #{x} #{y}"
  end
end

#this deploys the ships to the board
ship_deploy = [1,2]
until ship_deploy == []
  sel2 = board.sample
  sel1 = sel2.sample
  if (sel2.index sel1) < 5
    count = 1
    5.times do
      x = (board.index sel2).to_i
      y = ((sel2.index sel1).to_i + count)
      board[x][y] = ship_deploy[0]
      count += 1
    end
    ship_deploy.slice!(0)
  end
end

#this is so you can find out where to fire
puts board

#the entire gameplay loop, will only finish when you decide you are finished
round = 0
hits = []
finished = false
until finished == true
round = round + 1

#input getter
puts "What x coordinate should we fire at commander?"
x_cord = gets.chomp
x_cord = x_cord.to_i
puts "What y coordinate should we fire at commander?"
y_cord = gets.chomp
y_cord = y_cord.to_i


#this accepts your input, evaluates if it is a hit and decreases the health of
#the appropriate ship, if the ship has less than zero health after that it takes
#that ship off the board

if !(board[x_cord][y_cord].to_s.include?('s'))
  puts 'hit'
  if board[x_cord][y_cord] == ship_object[0].id
    ship_object[0].health = ship_object[0].health - 1
    hits << 'hit'
    if ship_object[0].health <= 0
      puts "you sunk ship #{ship_object[0]}"
      board.each do |x|
        10.times do |y|
          if x[y] == ship_object[0].id.to_i
           x[y] = 'sea'
          end
        end
      end
    end
  else
    ship_object[1].health = ship_object[1].health - 1
    hits << 'hit'
    if ship_object[1].health <= 0
      puts "you sunk ship #{ship_object[1]}"
      board.each do |x|
        10.times do |y|
          if x[y] == ship_object[1].id.to_i
           x[y] = 'sea'
          end
        end
      end
    end
  end
end

puts "you've played #{round} rounds and scored #{hits.length} hits!"



puts "Keep playing (y/n)"
answer = gets.chomp
if answer == "n"
  File.write('/data.rb', 'Some glorious content')
  finished = true
end


end

binding.pry
puts 'Program resumes here'
