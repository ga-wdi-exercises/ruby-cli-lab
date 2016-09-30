
require "pry"

class BoardSquare
  attr_accessor :colid,:rowid,:empty,:owner, :computer, :ship,:colltr,:hit,:miss

  def initialize row,col,letter
    @rowid=row
    @colid=col
    @colltr=letter
    @empty=true
    @owner=false
    @computer=false
    @ship=false
    @miss=false
    @hit=false

  end # initialize
  def isempty?
    return(@empty)
  end

  def printpoint (game)
    if @colid==1 && @rowid==1
      puts "     A  B  C  D  E  F  G  H  I  J"
    end #if
    if @colid ==1
      printf("%3i ",@rowid)
    end #if
    if  @empty || ((!@empty && @ship) && !game.showship)
      print(" . ")
    elsif (!@empty && @ship) && game.showship
      print(" S ")
    elsif !@empty && @hit
      print (" * ")
    elsif !@empty && @miss
      print (" - ")
    end #end



    if @colid==game.maxcol
      puts
    end  #IF
  end #printpoint


end #Class BoardSquare

class Board
  attr_accessor :maxrow, :maxcol,:squares,:misses, :hits ,:showship

  def initialize maxrow, maxcol
    @maxrow=maxrow
    @maxcol=maxcol
    @misses=0
    @hits=0
    @showship=false
    @squares=[]
     ltr=["A","B","C","D","E","F","G","H","I","J"]
    (1..@maxrow).each { |r|
      (1..@maxcol).each { |c|
        bs= BoardSquare.new r, c,ltr[c-1]
        @squares.push(bs)
      }
    }
  end # initialize

  def show_board
    puts
    self.squares.each { |s| s.printpoint self }
  end #show_board

  #######################################################################
  # check_ship
  # Description: handle menu number choices
  #     Parmeters: menu_itm
  #
  #     Return - true -true if ship is already on space
  #######################################################################
  def check_ship (horv,x1,y1)
    if horv==1   #build in vertical position row increases
      (x1..x1+4).each { |r|   # row changes  y stayes same
        sq=self.squares.find{|s| s.rowid == r && s.colid==y1}
        if !sq.empty
          return true
        end #if
      }
    else
      (y1..y1+4).each { |c|   # row changes  y stayes same
        sq=self.squares.find{|s| s.rowid == x1 && s.colid==c}
        if !sq.empty
          return true
        end
      }
    end #horv
    return false # nothing to hit
  end #check_ship

  #######################################################################
  # Build_ship
  # Description: handle menu number choices
  #     Parmeters: menu_itm
  #
  #     Return - true - exit  false = replay menu
  #######################################################################
  def build_ship
    r = Random.new
    ok=false
    while !ok do
      horv=r.rand(1..2) # 1 = vertical 2 = Horiz
      x1=r.rand(1..6)
      y1=r.rand(1..6)

      ok= !self.check_ship(horv,x1,y1)
    end #while

    if horv==1   #build in vertical position row increases
      (x1..x1+4).each { |r|   # row changes  y stayes same
        sq=self.squares.find{|s| s.rowid == r && s.colid==y1}
        sq.empty=false
        sq.ship=true
      }
    else
      (y1..y1+4).each { |c|   # row changes  y stayes same
        sq=self.squares.find{|s| s.rowid == x1 && s.colid==c}
        sq.empty=false
        sq.ship=true
      }
    end  #if
  end #build_ship

  def shoot_ship (r,c)

    sq=self.squares.find{|s| s.rowid == r && s.colltr==c}
    if sq.empty
        sq.empty = false
        sq.miss=true
        self.misses +=1
    elsif sq.ship    # ship is here
        self.hits +=1
        sq.hit=true
    end #if

  end # shoot_ship

end #class Board


    #######################################################################
    # start_game
    # Description: handle menu number choices
    #     Parmeters: menu_itm
    #
    #     Return - true - exit  false = replay menu
    #######################################################################
    def start_game
      Board.new 10, 10
    end

    #######################################################################
    # handle_menu
    # Description: handle menu number choices
    #     Parmeters: menu_itm
    #
    #     Return - true - exit  false = replay menu
    #######################################################################
    def handle_menu(menu_item,battleship)

      case menu_item.to_i

      when 1
        # view_all_apts(apartments)
        menu_item=0
        battleship=start_game
        battleship.build_ship
        battleship.build_ship
        return false
      when 2
        battleship.showship = !battleship.showship
        return false
      when 3
        battleship.build_ship
        battleship.show_board
        return false

      when 99
        return true
      else
        puts("Please type a Valid Menu Item")
        puts("Press [ENTER] to continue")
        gets
        return false
      end #case
    end # handle_menu

    #######################################################################
    # menu
    # Description: Display Menu of numeric choices
    #     Parmeters:  None
    #
    #     Return - choice number
    #######################################################################
    def menu game
      puts `clear`
      puts "dBBBBb     dB  dBBBBBP  dBBBBBP dBP    dBBBBP  dBBBBP dBP dBP dBP  dBBBBBb"
      puts "dB  dP    BBB    dBP      dBP   dBP    dP     dBP     dBP dBP dBP  dB   BP"
      puts "dBBBK    dBBBBB  dBP      dBP   dBP    dBBP   `BBBBb  dBBBBBP dBP  dBBBP'"
      puts "dB  db  dBP  BB  dBP      dBP   dBP    dP        dBP  dBP dBP dBP  dBP"
      puts "dBBBBP' dBB  BBB dBP      dBP   dBBBBP dBBBBP dBBBBP' dBP dBP dBP  dBP"
      puts
      game.show_board
      puts
      puts  "  . Unknown   *   Hit [#{game.misses}]  - Misses [#{game.hits}]"
      puts
      puts " MAIN MENU"
      puts
      puts "1 - New Game"
      puts !game.showship ? "2 - Show Ships (CHEATER!)" : "2 - Hide Ships"
      puts "3 - build ship"
      puts "99 - Exit this App"
      puts "A..Z## ( A-J is Column 1-10 Row)  Shoot at Ship"
      puts
      print "Enter Menu Choice[1..2  99 ]:"

      return gets.chomp
    end # menu



    menu_item=0
    battleship=start_game
    battleship.build_ship
    battleship.build_ship
# binding.pry
    while true
      menu_item=menu (battleship)       # chewck for shooting cordinets
      if ["A","B","C","D","E","F","G","H","I","J"].index(menu_item[0].upcase)
        battleship.shoot_ship(menu_item[1..2].to_i,menu_item[0].upcase)
      elsif  handle_menu(menu_item,battleship)
        break # exit given
      end #if
    end
