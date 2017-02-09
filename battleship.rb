ship_placer = Random.new
sunk_ships = 0
# Builds grid
grid = []
grid_builder = 0
until grid_builder == 10
  grid.push(['O','O','O','O','O','O','O','O','O','O'])
  grid_builder += 1
end

# Determines horizontal (0) or vertical (1) and places ship
row_or_column = Random.new
row_or_column = row_or_column.rand(0..1)
row = Random.new
column = Random.new
stop = 0
first_ship = []
second_ship = []
if row_or_column == 0
  row = row.rand(0..9)
  column = column.rand(0..5)
  until stop == 5
    first_ship.push([row,column])
    column += 1
    stop += 1
  end
else
  row = row.rand(0..5)
  column = column.rand(0..9)
  until stop == 5
    first_ship.push([row,column])
    row += 1
    stop += 1
  end
end

# Preventing overlapping ships.
i = 0
while i == 0
  second_row_or_column = Random.new
  second_row_or_column = second_row_or_column.rand(0..1)
  second_row = Random.new
  second_column = Random.new
  stop = 0
  if second_row_or_column == 0
    second_row = second_row.rand(0..9)
    second_column = second_column.rand(0..5)
    until stop == 5
      second_ship.push([second_row,second_column])
      second_column += 1
      stop += 1
    end
  else
    second_row = second_row.rand(0..5)
    second_column = second_column.rand(0..9)
    until stop == 5
      second_ship.push([second_row,second_column])
      second_row += 1
      stop += 1
    end
  end
  comparator = first_ship & second_ship
  if comparator.empty? == true
    i += 1
  else
    puts "Ships are overlapping, trying again"
  end
end
p first_ship[0..4]
p second_ship[0..4]

row_guess = 0
column_guess = 0
ship_one_hits = 0
ship_two_hits = 0
guess_counter = 0
coordinate_guess = []
puts "Welcome to Battleship! You have 20 turns to sink two ships with five hits each.  Good luck!"
until guess_counter == 20
  puts "Please enter two numbers, 0-9, for your guess (row/column)."
  row_guess = gets.chomp.to_i
  column_guess = gets.chomp.to_i
  coordinate_guess.push([row_guess, column_guess])
  check_ship_one = coordinate_guess & first_ship
  check_ship_two = coordinate_guess & second_ship
  if check_ship_one.empty? == false
    puts "You got a hit!"
    grid[row_guess,column_guess] = 'X'
    ship_one_hits += 1
    if ship_one_hits == 5 && ship_two_hits == 5
      puts "You sunk both ships!  You win!"
    elsif ship_one_hits == 5
      puts "You sunk a ship!"
    end
  elsif check_ship_two.empty? == false
    puts "You got a hit!"
    grid[row_guess,column_guess] = 'X'
      ship_one_hits += 1
    if ship_one_hits == 5 && ship_two_hits == 5
      puts "You sunk both ships!  You win!"
    elsif ship_one_hits == 5
      puts "You sunk a ship!"
    end
  else
    puts "You missed!"
  guess_counter += 1
  puts "You have #{20-guess_counter} guesses left!"
end
