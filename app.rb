require_relative 'FlashCard.rb'
require_relative 'Game.rb'

game = Game.new

game.deck.push(Flashcard.new("Stephen Curry", "Golden State Warriors"))
game.deck.push(Flashcard.new("James Harden", "Houston Rockets"))
game.deck.push(Flashcard.new("Russell Westbrook", "OKC Thunder"))
game.deck.push(Flashcard.new("Lebron James", "Cleveland Cavaliers"))
game.deck.push(Flashcard.new("Kawhi Leonard", "San Antonio Spurs"))



game.display
