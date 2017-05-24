require 'pry'

class Ocean
    attr_accessor :board, :first_ship_row, :row

    def initialize()
        @@board = [
            [false, false, false, false, false, false, false, false, false, false],
            [false, false, false, false, false, false, false, false, false, false],
            [false, false, false, false, false, false, false, false, false, false],
            [false, false, false, false, false, false, false, false, false, false],
            [false, false, false, false, false, false, false, false, false, false],
            [false, false, false, false, false, false, false, false, false, false],
            [false, false, false, false, false, false, false, false, false, false],
            [false, false, false, false, false, false, false, false, false, false],
            [false, false, false, false, false, false, false, false, false, false],
            [false, false, false, false, false, false, false, false, false, false]
         ]

         def positioning row, position
            original_position = position
            until position == original_position + 5
                @@board[row][position] = true
                position += 1
            end
        end

        def place_ship1
            row = rand(10)
            @first_ship_row = row
            position = rand(6)
            original_position = position
            positioning row, position
        end

        def place_ship2
            row = rand(10)
            until row != @first_ship_row
                row = rand(10)
            end
            position = rand(6)
            original_position = position
            positioning row, position
        end

        place_ship1
        place_ship2
    end

    def self.show_board
        @@board
    end
end

class Player < Ocean
    def initialize
        @player_moves = [
            ['0:0','0:1','0:2','0:3','0:4','0:5','0:6','0:7','0:8','0:9'],
            ['1:0','1:1','1:2','1:3','1:4','1:5','1:6','1:7','1:8','1:9'],
            ['2:0','2:1','2:2','2:3','2:4','2:5','2:6','2:7','2:8','2:9'],
            ['3:0','3:1','3:2','3:3','3:4','3:5','3:6','3:7','3:8','3:9'],
            ['4:0','4:1','4:2','4:3','4:4','4:5','4:6','4:7','4:8','4:9'],
            ['5:0','5:1','5:2','5:3','5:4','5:5','5:6','5:7','5:8','5:9'],
            ['6:0','6:1','6:2','6:3','6:4','6:5','6:6','6:7','6:8','6:9'],
            ['7:0','7:1','7:2','7:3','7:4','7:5','7:6','7:7','7:8','7:9'],
            ['8:0','8:1','8:2','8:3','8:4','8:5','8:6','8:7','8:8','8:9'],
            ['9:0','9:1','9:2','9:3','9:4','9:5','9:6','9:7','9:8','9:9']
        ]
    end

    $game_over = false

    def is_game_over
        @all_rows_false = true
        for row in @@board
            for column in row
                if column == true
                    @all_rows_false = false
                    break
                end
            end
        end
        if @all_rows_false == true
            puts "You Have Sunk Both Battleships! Flawless Victory (except for all the flaws)!"
            $game_over = true
        end
    end

    def torpedo row, column
        if row < 0 || row > 9 || column < 0 || column > 9
            puts "Please choose row and column numbers between 0-9"
        elsif @@board[row][column] == true
            @@board[row][column] = false
            @player_moves[row][column] = 'Hit'
            puts "Direct Hit"
            puts @player_moves
            is_game_over
        elsif @@board[row][column] == false
            @player_moves[row][column] = 'Missed'
            is_game_over
            puts "Target Missed"
            puts @player_moves
        end
    end
end

def start_game
    puts "Welcome to Battleship!"
    puts "----------------------\n\n"
    puts "Menu"
    puts "----"
    puts "1 - Instructions"
    puts "2 - Play Game\n\n"

    puts "Enter 1 or 2 for your selection"
    selection = gets.chomp
    puts "\n"
    if selection == "1"
        puts "The objective of the game is to destroy the enemies two battleships. The game is played on a 10x10 grid. Each battleship takes up 5x1 spaces on the grid.\n\n"
        puts 'Type 1 to return'
        menu = gets.chomp
        if menu == '1'
            start_game
        else
            ruby
        end
    elsif selection == "2"
        ocean = Ocean.new
        player = Player.new

        until $game_over == true
            puts "Select a row(0-9)"
            row = gets.chomp.to_i
            puts "Select a column(0-9)"
            column = gets.chomp.to_i
            player.torpedo(row, column)
        end
    end
end

start_game


