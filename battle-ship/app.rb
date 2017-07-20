require "pry"
require_relative "Ocean"
require_relative "Menu"

menu = Menu.new
menu.display


ocean = Ocean.new(5)
ocean.make_board()



binding.pry
