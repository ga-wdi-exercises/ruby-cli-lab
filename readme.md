# Ruby CLI Lab
 
Today is _your_ chance to practice Ruby. You'll have the option to choose one of
three prompts (ranked by difficulty):

1. [Flash Cards](./flash_cards.md)
1. [Personal Finance](./personal_finance.md)
1. [Battleship](./battleship.md)

## Getting Started

Think about how you want to structure your application. Will you have a `Menu` class?

Here's an example:

```rb
class Menu
  def self.display
    while 1
      puts "Choose one of the following:"
      puts "1 - Option 1"
      puts "2 - Option 2"
      puts "3 - Option 3"
      input = gets.chomp
      if ["1","2","3"].include? input
        self.select input
        break
      else
        puts "Invalid option."
      end
    end
  end
  def self.select number
    puts "You selected #{number}"
  end
end

Menu.display
```

What other classes will you have? A flashcard?

```rb
class Flashcard
  attr_accessor :front, :back
  def initialize front, back
    @front = front
    @back = back
  end
end

Flashcard.new "Buenos Dias", "Good morning"
```
