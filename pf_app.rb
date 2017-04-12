class Transaction
  attr_accessor :amount, :category, :type

  def initialize(amount, category, type)
    @amount = amount
    @category = category
    @type = type
  end
end

$balance = 0
$transactions = []

loop do
  puts 'enter option'
  puts '1 - enter new transaction'
  puts '2 - view previous transactions'
  puts '3 - view current balance'
  puts 'exit - exit program'
  input = gets.chomp

  break if(input == 'exit')

  if(input == '1')
    puts 'enter transaction amount'
    amount = gets.chomp.to_i
    puts 'enter transaction category'
    category = gets.chomp
    puts 'credit or debit (c/d)'
    type = gets.chomp == 'c' ? 'credit' : 'debit'
    
    if(type == 'credit')
      $balance -= amount
    else
      $balance += amount
    end
    $transactions.push(Transaction.new(amount, category, type))
  elsif(input == '2')
    transactions.each {|transaction| puts "AMT: #{transaction.type == 'debit' ? '+' : '-'} #{transaction.amount}, CATEGORY: #{transaction.category}, TYPE #{transaction.type} "}
  elsif (input == '3')
    puts $balance

  end

end
