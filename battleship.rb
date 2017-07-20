
class BattleShips

def self.initialize_board(n, val)
  Array.new(n) { Array.new(n) { val } }
end

@shipCount = 0
@shipCollide = false
@boardShow = initialize_board(10, "~~")

def self.drawBoard
@boardShow.each do |arr|
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
           @boardShow[@y + i][@x] = "xx"
           i+=1
           end
           @shipCount +=1
        end
      else
         checkCollision("up")
        if @shipCollide == false
           i = 0
           until i > 4
           @boardShow[@y - i][@x] = "xx"
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
             @boardShow[@y][@x + i] = "XX"
             i+=1
             end
             @shipCount +=1
           end
       else
         checkCollision("left")
           if @shipCollide == false
             i=0
             until i > 4
             @boardShow[@y][@x - i] = "XX"
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
        if @boardShow[@y + i][@x] != "~~"
        @shipCollide = true
        end
        i+=1
    end
  elsif dir == "up"
       i = 0
       until i > 4
       if @boardShow[@y - i][@x] != "~~"
       @shipCollide = true
       end
       i+=1
    end
  elsif dir =="right"
      i = 0
      until i > 4
       if @boardShow[@y][@x + 1] != "~~"
       @shipCollide = true
      end
      i+=1
    end
  elsif dir =="left"
        i = 0
       until i > 4
       if @boardShow[@y][@x - 1] != "~~"
       @shipCollide = true
       end
       i+=1
     end
  end
end

while @shipCount < 2 do
  placeShip
  puts @shipCount
end

drawBoard
# placeShip
end
