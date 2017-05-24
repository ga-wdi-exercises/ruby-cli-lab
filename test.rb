

  



    def transactions(single_transaction, transactions)
      @transactions.push(single_transaction += 1)
    end

    def get_balance(category_one, category_two)
      @category.push(category_one + category_two)
    end

    def total_transaction(transactions)
      @transactions.inject{:+}
    end



    def self.secondisplay number
      puts "You selected #{number}"
      if ["1"]
        Menu.transactions
    end


  end
