def data
  checking = [
    {:id=>1, :address=>"9841 Tanner Key", :monthly_rent=>606, :square_feet=>779},
    {:id=>2, :address=>"6971 Corwin Locks", :monthly_rent=>862, :square_feet=>1444}
  ]
  savings = [
    {:id=>1, :name=>"Ms. Maryse Farrell", :age=>87, :apartment_id=>8},
    {:id=>2, :name=>"Maci Hickle II", :age=>28, :apartment_id=>1}
  ]
  return {checking:checking, savings:savings}
end
