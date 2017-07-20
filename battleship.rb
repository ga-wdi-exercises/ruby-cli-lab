#Build the board with 10 rows and 10 columns
board = [
        ["+", " 0 ", " 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 ", " 7 ", " 8 ", " 9 ", "\n"],
        ["A", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["B"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["C"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["D"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["E"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["F"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["G"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["H"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["I"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["J"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - "]]

display_board = [
        ["+", " 0 ", " 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 ", " 7 ", " 8 ", " 9 ", "\n"],
        ["A", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["B"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["C"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["D"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["E"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["F"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["G"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["H"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["I"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", "\n"],
        ["J"," - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - ", " - "]]

puts display_board.join()
# Build a ship that is 5 spaces long
ship = [" A ", " A ", " A ", " A ", " A "]
hits = []


# Randomly generate the ship's starting coordinates
x_coord = (1 + rand(7))
y_coord = (1 + rand(6))

# Place the ship on the board
ship.length.times do |i|
  board[y_coord][x_coord] = ship[i]
  x_coord+=1
end

play = true
# Ask user to guess coordinates
while play do
  while hits.length < 5 do
    puts "Guess a location to find the hidden ships!"
    answer = gets.chomp.upcase
    if answer == "REVEAL"
      puts board.join()
    else
      col_key = ["+", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
      row_key = ["+", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
      xguess = row_key.find_index{|i| i == answer[0]}
      yguess = col_key.find_index{|i| i == answer[1]}
      if xguess && yguess
        if board[xguess][yguess] == " A "
          puts "******    Hit!    ******"
          hits << answer
          display_board[xguess][yguess] = " X "
          puts display_board.join()
        else
          puts "xxxxxx   Miss!    xxxxxx"
          display_board[xguess][yguess] = " O "
          puts display_board.join()
        end
      else
        puts "That is not a valid spot on this board. Try again!"
      end
    end
  end
  puts "You sunk my battleship!"
  display_board[xguess][yguess] = " X "
  puts display_board.join()
  play = false
end
