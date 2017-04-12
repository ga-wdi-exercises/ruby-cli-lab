def data
  transactions = [
    {:id=>1, :payee=>"Best Buy", :amount=>599.99, :date=>20170412, :category=>"electronics", :userid=>0003},
    {:id=>2, :payee=>"Chopt", :amount=>11.63, :date=>20170411, :category=>"food", :userid=>0002},
    {:id=>3, :payee=>"General Assembly", :amount=>53675.00, :date=>20170401, :category=>"education", :userid=>0001},
    {:id=>4, :payee=>"Amazon", :amount=>24.08, :date=>20170327, :category=>"misc",  :userid=>0003}
    {:id=>5, :payee=>"Jimmy's Exotic Auto", :amount=>78000, :date=>20170214, :category=>"automotive",  :userid=>0004}
  ]

  accounts = [
    {:id=>0001, :name=>"Johnny Rico", :balance=>887},
    {:id=>0002, :name=>"Lauren Mudre", :balance=>2089},
    {:id=>0003, :name=>"Ryan Hawes", :balance=>154},
    {:id=>0004, :name=>"Nishant Kanitkar", :balance=>0.01}
  ]
  return {transactions:transactions, accounts:accounts}
end
