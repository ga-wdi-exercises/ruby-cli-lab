#require_relative "data"
#balance = data[:balance]
#client = data[:client]
# -------------- draft --------------- draft ----------- draft ----------
puts "Welcome to Wiese Bank. Please enter your name"
@client = gets.chop
puts "Hello " #+ @name
puts "How may i help you?"
puts "Would you like to make a withdrawl(w) or deposit(d)?"
@type = gets
@type.chomp

class Accounts
  attr_accessor :client, :type, :amount, :balance
  @@all = []
  @balance = 0
    def initialize (client, type, amount)
      #@client = client
      @client = [
        {:id=>1, :name=>"Ms. Maryse Farrell"},
        {:id=>2, :name=>"Maci Hickle II"},
        {:id=>3, :name=>"Jordan Cremin DDS"},
        {:id=>4, :name=>"Haven Abbott"},
        {:id=>5, :name=>"Roxane Walter"},
        {:id=>6, :name=>"Dr. Everett Kuhn"},
        {:id=>7, :name=>"Ella Quigley DDS"},
        {:id=>8, :name=>"Miss Flavio Wyman"},
        {:id=>9, :name=>"Mathilde Beatty"},
        {:id=>10, :name=>"Randall Crist Sr."},
        {:id=>11, :name=>"Connor Kunze"},
        {:id=>12, :name=>"Dessie McLaughlin"},
        {:id=>13, :name=>"Buck Jacobs PhD"},
        {:id=>14, :name=>"Una Kulas"},
        {:id=>15, :name=>"Elenora Dibbert"}
      ]
      @balance = [
        {:id=>1, :balance=>606},
        {:id=>2, :balance=>862},
        {:id=>3, :balance=>501},
        {:id=>4, :balance=>809},
        {:id=>5, :balance=>9010},
        {:id=>6, :balance=>785},
        {:id=>7, :balance=>5801},
        {:id=>8, :balance=>7532},
        {:id=>9, :balance=>8629},
        {:id=>10, :balance=>9072},
        {:id=>11, :balance=>7235},
        {:id=>12, :balance=>9395},
        {:id=>13, :balance=>8257},
        {:id=>14, :balance=>734},
        {:id=>15, :balance=>6297}
      ]

      @type = type
      @amount = amount
      #date = Time.now
      @@all.push(self)
    end

  def transactions
      if @type == "w"
          puts "you current balance is" #+ @balance
          puts "Please enter amount"
          @amount = gets.chomp.to_i
         #return "#{@balance} - #{@amount}"
          def withdrawl(balance, amount)
            balance - amount
          end
      elsif @type == "d"
          puts "you current balance is" #+ @balance
          puts "Please enter amount"
          @amount = gets.chomp.to_i
          @balance + @amount
          def deposit(balance, amount)
            balance + amount
          end
      end
  end
end
