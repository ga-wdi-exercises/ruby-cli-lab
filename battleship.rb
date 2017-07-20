
class BattleShips

def self.initialize_board(n, val)
  Array.new(n) { Array.new(n) { val } }
end
@hitPoints = 10
@shipCount = 0
@shipCollide = false
@boardShow = initialize_board(10, "~~")
@boardLogic = initialize_board(10, "~~")

def self.drawBoard
  puts "[]x0x1x2x3x4x5x6x7x8x9"
  yCount = 0
@boardShow.each do |arr|
  print "y"+yCount.to_s
  yCount +=1
 arr.each do |subarr|
   print subarr
 end
 puts "\n"
end

end

def self.placeShip
  x = rand(0..9)
  y = rand(0..9)
  if rand.round == 0
  orient = "v"
else
  orient = "h"
end
  buildShip(x, y, orient)
end

def self.buildShip (y, x, orient)
  @orient = orient
  @y = y
  @x = x
    if @orient == "v"
      if @y < 5
        checkCollision("down")
        if @shipCollide == false
            i=0
           until i > 4
           @boardLogic[@y + i][@x] = "XX"
           i+=1
           end
           @shipCount +=1
        end
      else
         checkCollision("up")
        if @shipCollide == false
           i = 0
           until i > 4
           @boardLogic[@y - i][@x] = "XX"
           i+=1
           end
           @shipCount +=1
        end
      end
    else
        if @x < 5
          checkCollision("right")
           if @shipCollide == false
             i=0
             until i > 4
             @boardLogic[@y][@x + i] = "XX"
             i+=1
             end
             @shipCount +=1
           end
       else
         checkCollision("left")
           if @shipCollide == false
             i=0
             until i > 4
             @boardLogic[@y][@x - i] = "XX"
             i+=1
             end
             @shipCount +=1
           end
       end
    end
end



# Check collision based on intented vector
def self.checkCollision(direction)
  @shipCollide = false
  dir = direction
  if dir == "down"
        i = 0
        until i > 4
        if @boardLogic[@y + i][@x] != "~~"
        @shipCollide = true

        end
        i+=1
    end
  elsif dir == "up"
       i = 0
       until i > 4
       if @boardLogic[@y - i][@x] != "~~"
       @shipCollide = true

       end
       i+=1
    end
  elsif dir =="right"
      i = 0
      until i > 4
         if @boardLogic[@y][@x + i] != "~~"
       @shipCollide = true

        end
      i+=1
      end
  elsif dir =="left"
        i = 0
       until i > 4
         if @boardLogic[@y][@x - i] != "~~"
         @shipCollide = true

         end
       i+=1
        end
  end
end

while @shipCount < 2 do
  placeShip
end
puts "Enter X and Y coordinates like this '1,2' for x1 and y2"
while @hitPoints != 0
drawBoard
puts "Enter X and Y coordinates"

@coordXY = []
gets.chomp.split(/\s*,\s*/).each { |item|
   if item =~ /^\s*(\d+)\s*$/
     @coordXY << item.to_i
   else
     abort "FAILURE TO FOLLOW INSTRUCTIONS: #{item}"
   end
 }
if @boardLogic[@coordXY[1]][@coordXY[0]] == "XX"
    if @boardShow[@coordXY[1]][@coordXY[0]] != "XX"
  @hitPoints -= 1
  puts "HIT!"
  @boardShow[@coordXY[1]][@coordXY[0]] = @boardLogic[@coordXY[1]][@coordXY[0]]
end

else
  puts @coordXY
  puts "MISS!"
  puts @boardShow[@coordXY[1]][@coordXY[0]]
  if @boardShow[@coordXY[1]][@coordXY[0]] == "~~"
  @boardShow[@coordXY[1]][@coordXY[0]] = "()"
end
end

end
puts "YOU WIN"
end
