require "pry"
require "./ship"

# Welcome Messages
puts "Welcome to battleship, what is your name?"
name = gets.chomp.capitalize
puts "#{name}, when prompted enter coordinates in alphanumeric fashion to fire torpedos at the enemy."
