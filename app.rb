require "pry"

class Battle_Board
attr_accessor :board, :ship_board, :ship_arr, :game, :size, :turns
  def initialize(size, ships)
    @board = []
    @ship_board = []
    @ship_squares = []
    @size = size
    @val = "."
    @ship_val = "0"
    @score = 0
    @turns = 0
    @ship_total = ships
    @ship_arr = []
    @game = true
    @hits = []
    @misses = []
  end
  def make_board
    @size.times do |row_index|
      @row = []
      @size.times { |column_index| @row << @val } # or row.push(val)
      @board << @row # or board.push(val)
    end
    @board.each do |i|
      print i + " "
      puts ""
    end
    @size.times do |row_index|
      @row = []
      @size.times { |column_index| @row << @ship_val } # or row.push(val)
      @ship_board << @row # or board.push(val)
    end
    puts " "
    puts "1 is untested water, 0 is a miss, and 5 is a hit. Type INFO for stats and help."
    while @ship_arr.length < @ship_total
      add_ship
    end
  end

  def guess(x, y)
    puts " "
    @board[y][x] = @ship_board[y][x]
    @board.each do |i|
      print i * " "
      puts ""
    end
    if (@board[y][x] == "0")
      puts " "
      puts "What a shit miss!"
      @turns += 1
      puts "Your score is #{@score} on turn #{@turns}"
      @misses << [x, y]
    else
      puts ""
      puts "YAARRR! THAT'S A HIT!"
      @turns += 1
      @score += 1
      puts "Your score is #{@score} on turn #{@turns}"
      @hits << [x, y]
      if @score >= @ship_total * 5
        puts "**************"
        puts "**************"
        puts "**************"
        puts "**************"
        puts "YOU DID IT!!!!"
        puts "**************"
        puts "**************"
        puts "**************"
        puts "**************"
    end
    puts " "
    puts "1 is untested water, 0 is a miss, and 5 is a hit. Type INFO for stats and help."
  end

  def make_ship(ship)
    up_or_right = rand(0..1)
    if up_or_right == 0
      x = rand(0..(@size - 1))

      y = rand(0..(@size - 6))

      # check_ship (x, y, ship)
      # check_ship (x, y + 1, ship)
      # check_ship (x, y + 2, ship)
      # check_ship (x, y + 3, ship)
      # check_ship (x, y + 4, ship)

      ship << [x, y]
      ship << [x, y + 1]
      ship << [x, y + 2]
      ship << [x, y + 3]
      ship << [x, y + 4]

    else
      y = rand(0..(@size - 1))

      x = rand(0..(@size - 6))

      # check_ship (x, y, ship)
      # check_ship (x + 1, y, ship)
      # check_ship (x + 2, y, ship)
      # check_ship (x + 3, y, ship)
      # check_ship (x + 4, y, ship)

      ship << [x, y]
      ship << [x + 1, y]
      ship << [x + 2, y]
      ship << [x + 3, y]
      ship << [x + 4, y]

    end
    ship_arr << ship
    # print ship
  end


  # def check_ship (x, y, ship)
  #   if @ship_board[x][y] == 0
  #     ship << [x, y]
  #   else break
  #   end
  # end

  def add_ship
    ship = []
    make_ship(ship)
    # ship_parts = 0
    # while ship_parts < 5
      ship.each do |i|
        y = i[0]
        x = i[1]
        # ship_parts += 1
        @ship_board[x][y] = "*"
      end
    # end
    # puts ship_parts
  end

end

class Menu
  attr_reader :display
  def initialize
  @input = ""
  end
  def display
    while @input != 0
      puts "YARRR! SHIVER ME TIMBERS! IT BE TIME TO BATTLE SHIPS, SAYS I!"
      puts "Choose one of the following:"
      puts "1 - New Game"
      puts "2 - Instructions"
      puts "3 - Pirate Joke"
      puts "0 - Exit"
      @input = gets.chomp
      if @input == "1"
        input_one

    elsif @input == "2"
        input_two

    elsif @input == "3"
      input_three
    elsif @input == "0"
      puts "YARRRR! A LANDLUBBER LIKE YE NEEDS TO GROW A PAIR OF SEA LEGS!"
      exit
    else
      puts "InvARRRlid input. Try ARRRgain!"
    end

    end
  end
  def input_one
    puts "YARRRR! Time to battle! How large of a grid do ye desire? (Don't go too crazy now... 10 is good, 20 is plenty...)"
        input1 = gets.chomp.to_i
        while 1
          if (input1 > 30 || input1 < 0)
            puts "I SAID DON'T GO TOO CRAZY! PICK AGAIN!"
            input1 = gets.chomp.to_i
          else
            puts "YARRR! Now how many ships will ye be wanting?"
            input2 = gets.chomp.to_i

            while 1
              if (input2 > 30 || input2 < 0)
                puts "I SAID DON'T GO TOO CRAZY! PICK AGAIN!"
                input2 = gets.chomp.to_i
              else
                new_game(input1, input2)


              end
            end
          end
        end
      end
  def input_two
    puts "- YARRRR! To win a game of battling ships, you muster enter coordinates (x and y) for an exploratory strike!"
    puts "- If you hit your target, your score will increase (and vice versa)."
    puts "- You even get to pick the size of the board yer wanting when you start a new game!"
    puts "- NOW GET OUT THARR AND PLUNDARR!"
    puts ""
  end
  def input_three
    puts "Where did the one-legged pirate go for breakfast?"
    puts "I HOP!"
    puts "ARR ARR ARR ARR!"
    puts ""
  end
  def s_input(input)
    input = input.upcase
    if input == "INFO"
      info
    elsif input == "EXIT"
      puts "YARRR! PISS OFF!"
      display
    elsif input == "NEWGAME"
      puts "YARRRR! Time to battle! How large of a grid do ye desire? (Don't go too crazy now... 10 is good, 20 is plenty...)"
          input1 = gets.chomp.to_i
          while 1
            if (input1 > 30 || input1 < 0)
              puts "I SAID DON'T GO TOO CRAZY! PICK AGAIN!"
              input1 = gets.chomp.to_i
            else
              puts "YARRR! Now how many ships will ye be wanting?"
              input2 = gets.chomp.to_i

              while 1
                if (input2 > 30 || input2 < 0)
                  puts "I SAID DON'T GO TOO CRAZY! PICK AGAIN!"
                  input2 = gets.chomp.to_i
                else
                  new_game(input1, input2)


                end
              end
            end

        end
      end
    end
  def info
    puts "- Type NEWGAME to begin anew."
    puts "- Type EXIT to quit."
  end
  def new_game(input1, input2)
    puts "LET US VENTURE FORTH FOR ADVENTURE AND BLOODSHED!"
    puts ""

    b1 = Battle_Board.new(input1, input2)
    b1.make_board
    while b1.game == true
      puts ""
      puts "YARRRR! Where will ye strike? Pick an x coordinate!"
      input = gets.chomp
      if (input.upcase == "INFO" || input.upcase == "EXIT" || input.upcase == "NEWGAME")
        s_input(input)
        puts ""
        puts "YARRRR! Where will ye strike? Pick an x coordinate!"
        input = gets.chomp
      end
      x_input = input.to_i
      while (x_input > b1.size - 1 || x_input < 0)
        puts "YARR! That input be invalid! (Remember, arrays start at 0!)"
        input = gets.chomp
        if (input.upcase == "INFO" || input.upcase == "EXIT" || input.upcase == "NEWGAME")
          s_input(input)
          puts ""
          puts "YARRRR! Where will ye strike? Pick an x coordinate!"
          input = gets.chomp
        end
        x_input = input.to_i
      end
      puts "YARRRR! Now pick a y coordinate!"
      input = gets.chomp
      if (input.upcase == "INFO" || input.upcase == "EXIT" || input.upcase == "NEWGAME")
        puts b1.misses
        s_input(input)
        puts ""
        puts "YARRRR! Where will ye strike? Pick an x coordinate!"
        input = gets.chomp
      end
      y_input = input.to_i
      while (y_input > b1.size - 1 || y_input < 0)
        puts "YARR! That input be invalid! (Remember, arrays start at 0!)"
        input = gets.chomp
        if (input.upcase == "INFO" || input.upcase == "EXIT" || input.upcase == "NEWGAME")
          s_input(input)
          puts ""
          puts "YARRRR! Where will ye strike? Pick an x coordinate!"
          input = gets.chomp
        end
        y_input = input.to_i
      end
      b1.guess(x_input, y_input)
      puts ""
      puts "You've selected to strike at #{x_input}, #{y_input}!"
    end

  end
end



# class Menu < Battle_Board
#   def initialize
#     @input1 = 0
#     @input2 = 0
#     @b1 = Battle_Board.new(@input1, @input2)
#     @go = false
#   def self.display
#     while @go == false
#       puts "YARRR! SHIVER ME TIMBERS! IT BE TIME TO BATTLE SHIPS, SAYS I!"
#       puts "Choose one of the following:"
#       puts "1 - New Game"
#       puts "2 - Instructions"
#       puts "3 - Pirate Jokes"
#       puts "0 - Exit"
#       input = gets.chomp
#       if ["1","2","3"].include? input
#         self.select (input)
#         @go = true
#         if input == "1"
#           input_one
#         end
#       elsif input == "0"
#         puts "You lack the sea legs for naval combat, landlubber!"
#         exit
#       else
#         puts "Invalid option."
#       end
#     end
#   end
#
#   def self.select (number)
#     puts "You selected #{number}"
#   end
#   def input_one
#     puts "YARRRR! Time to battle! How large of a grid do ye desire? (Don't go too crazy now... 10 is good, 20 is plenty...)"
#     @input1 = gets.chomp.to_i
#     while 1
#       if (@input1 > 30 || @input1 < 0)
#         puts "I SAID DON'T GO TOO CRAZY! PICK AGAIN!"
#         @input1 = gets.chomp.to_i
#       else
#         puts "YARRR! Now how many ships will ye be wanting?"
#         @input2 = gets.chomp.to_i
#         break
#         while 1
#           if (@input2 > 30 || @input2 < 0)
#             puts "I SAID DON'T GO TOO CRAZY! PICK AGAIN!"
#             @input2 = gets.chomp.to_i
#           else
#
#             puts "LET US VENTURE FORTH FOR ADVENTURE AND BLOODSHED!"
#             while 1
#             b1 = Battle_Board.new(@input1, @input2)
#             b1.make_board
#
#               input = gets.chomp
#
#             end
#             break
#           end
#         end
#
#       end
#     end
#     end
#   end
# end

menu = Menu.new
menu.display


  binding.pry



# b1 = Battle_Board.new(20, 5)
#
#
# b1.make_board
# b1.guess(1, 1)
# b1.guess(5, 7)
