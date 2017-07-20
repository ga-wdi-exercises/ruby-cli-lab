class Ocean
  attr_reader :grid, :user_grid, :ship_data, :ship_count

  def initialize(ship_total)
    @user_grid = []
    @grid = []
    @ship_data = []
    @ship_total = ship_total
    @ship_count = 0
  end

  def make_board
    10.times do |row|
      row = []
      10.times do
        row << 0
      end
      @user_grid << row
    end
    @user_grid.each do |i|
      print i
      puts ""
    end
    10.times do |row|
      row = []
      10.times do
        row << 0
      end
      @grid << row
    end
    while @ship_count < @ship_total
      add_ship()
    end
  end

  def display_board
    @grid.each do |i|
      print i
      puts ""
    end
  end

  def add_ship()
    ship = []
    make_ship(ship)
  end

  def make_ship(ship)
    overlap = false
    # while (@ship_count <= @ship_total)
      direction = rand(1..2) #1 ==> UP/DOWN, #2 ==> LEFT/RIGHT
      if direction == 1
        x = rand(0..9)
        y = rand(0..4)
        ship << [x, y]
        ship << [x, y + 1]
        ship << [x, y + 2]
        ship << [x, y + 3]
        ship << [x, y + 4]
      else
        y = rand(0..9)
        x = rand(0..4)
        ship << [x, y]
        ship << [x + 1, y]
        ship << [x + 2, y]
        ship << [x + 3, y]
        ship << [x + 4, y]
      end
      @ship_data.flatten(1).each do |i|
        if ship.include?(i)
          print i
          print "match"
          puts ""
          overlap = true
        end
      end
      if overlap == true
        ship = []
        make_ship(ship)
      else
        @ship_count += 1
        @ship_data << ship
        place_ship(ship)
        print ship
        puts ""
      end
    # end
  end

  def place_ship(ship)
    ship.each do |i|
      y = i[0]
      x = i[1]
      @grid[x][y] = 1
    end
  end

  def torpedo(y, x) # 0 = EMPTY, 1 = SHIP, 2 = MISSES 3 = HIT SHIP
    if @grid[x][y] == 1
      @user_grid[x][y] = 3
      @grid[x][y] = 3
      puts "It's a hit captain!"
    elsif @grid[x][y] == 0
      @user_grid[x][y] = 2
      @grid[x][y] = 2
      puts "It's a miss"
    elsif @grid[x][y] == 2
      puts "You Already shot there"
    end
  end
end
