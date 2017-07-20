require "pry"
class Menu
  @start_game = nil
  puts "Welcome to BATTLEFLEET." + "\n" + "Choose your next battle!"
  until @start_game == 1 do
    puts "To begin enter '1'" + "\n"
    @start_game = gets.chomp.to_i
    puts "starting game..."
    # should start the initiatilization of game
  end
end
