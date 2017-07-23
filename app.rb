require_relative "Map"


x =  Map.new(10,10,2)
# x.add_ship(8,5,"north")
# x.add_ship(2,4,"east")
# x.add_ship(3,4,"south")
#
# x.add_hit(8,5)
# x.add_hit(1,1)
# x.add_hit(2,8)
# x.add_hit(2,9)
# x.add_hit(2,10)
# x.display()



puts "WELCOME TO THE BATTLESHIP GAME"



puts "do you wanna play battleship y/n"
input = gets.chomp

while input =="y"
puts "enter the number of ROWS for the map, 10 is ideal"
rows = gets.chomp.to_i
puts "enter the number of COLUMNS for the map, 10 is ideal"
cols = gets.chomp.to_i
puts "enter the number of ships"
ships =gets.chomp.to_i
x=Map.new(rows, cols,ships)
x.create_random_ships()
x.display

(rows * cols).times do |index|
puts "Enter ROW coordinate for Torpedo"
xrow = gets.chomp.to_i
puts "Enter COLUMN coordinate for Torpedo"
xcol = gets.chomp.to_i
x.add_hit(xrow,xcol)
x.display


end





end
