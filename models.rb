# require 'pry'

class Account
attr_accessor :username, :type, :transactionlog, :totalamt, :balance

  def initialize(username, type)
    @username = username
    @type = type
    @transactionlog = []
    @totalamt = 0
  end

  def trans(payee, amount, month, day, category)
    idnum = transactionlog.length + 1
    new_tran = {:id => idnum, :payee => payee, :amount => amount, :month => month , :day => day, :category => category}
    @transactionlog << new_tran
  end

  def alltrans
    @transactionlog.each {|trans| puts trans}
  end

  def filter(category)
    @transactionlog.each do |trans|
      if trans[:category] == category
        puts trans
      end
    end
  end

  def total(category)
    totalnum = 0
    @transactionlog.map do |trans|
      if trans[:category] == category
          newnum = trans[:amount]
          totalnum += newnum
      end
    end
    puts "Total spent on #{category} is #{totalnum}"
  end

def balance
  balance = 0
  @transactionlog.map do |trans|
  if trans[:amount] < 0
    newnum = trans[:amount]
    balance += newnum

  else
    newnum = trans[:amount]
    balance += newnum

  end
end
  puts "Balance is $#{balance}"
end

def delete
  puts @transactionlog
  puts "Enter the ID number of the transaction you would like to delete"
  input = gets.chomp
  @transactionlog.delete_if {|trans| trans[:id] == input.to_i}
  id = 0
  @transactionlog.map do |trans|
    trans[:id] = id + 1
    id += 1
  end
  puts @transactionlog
end

def edit
  puts @transactionlog
  puts 'Enter the ID number of the transaction you would like to edit'
  idinput = gets.chomp
  @transactionlog.map do |trans|
    if trans[:id] == idinput.to_i
      thisTrans = trans
      puts thisTrans
    end
    puts thisTrans
    puts 'What property would you like to edit?'
    propinput = gets.chomp.to_sym
    puts "What would you like to change it to?"
    newprop = gets.chomp
    if propinput == :payee || propinput == :category
      thisTrans[propinput] = newprop
    else
      thisTrans[propinput] = newprop.to_i
    end
    puts thisTrans
    return thisTrans
  end

end



end

alex = Account.new('Alex', 'checking')
alex.trans('Bob', 200, 10, 1, 'food')
alex.trans('Joe', 100, 2, 12, 'entertainment')
alex.trans('Ben', 500, 8, 22, 'food')



  # binding.pry
