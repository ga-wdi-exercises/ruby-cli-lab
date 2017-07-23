class Map

  attr_accessor :map, :columns, :rows, :hits, :missed, :SHIPS_NUMBER

  def initialize(rows, columns, ships_number)

    @map = []
    @map2 =[]
    @columns = columns+1
    @rows = rows+1
    @hits =0
    @missed =0
    @SHIPS_NUMBER=ships_number



    #adding the elemetn arrays
    @rows.times do |index|
      @map << []
      @map2 <<[]
    end

    #setting the underscore for each elemet on the 2 d array
    @map.each do |rowx|

      @columns.times do |index|
        rowx << "_"
      end

    end


    @rows.times do |index|
      @map[index][0] = ""
      @map[index][0] << (index ).to_s + " \t"
    end

    @columns.times do |index|
      @map[0][index] = ""
      @map[0][index]= "*\t" if index ==0

      @map[0][index] << (index ).to_s if index !=0
    end



  end # end of initialize





  def display()
    @map.length.times do |index1|
      puts @map[index1]* "  "
    end
    puts "------------------------------"
    puts "Number of HITS   : " + @hits.to_s
    puts "Number of MISSED : " + @missed.to_s
    puts "Number of Moves  : " + (@hits + @missed).to_s
        puts "------------------------------"
  end


  def add_ship(x,y,direction)
    s = "#"
    if(direction ==1)
      @map[x][y]=s
      @map[x-1][y]=s
      @map[x-2][y]=s
      @map[x-3][y]=s
      @map[x-4][y]=s
    elsif direction ==2
      @map[x][y]=s
      @map[x][y+1]=s
      @map[x][y+2]=s
      @map[x][y+3]=s
      @map[x][y+4]=s
    elsif direction ==3
      @map[x][y]=s
      @map[x+1][y]=s
      @map[x+2][y]=s
      @map[x+3][y]=s
      @map[x+4][y]=s
    elsif direction ==4
      @map[x][y] = s
      @map[x][y-1] = s
      @map[x][y-2] = s
      @map[x][y-3] = s
      @map[x][y-4] = s
    else
      puts "invalid building direction of ship"
    end
  end #end of add_ship


  def add_hit(row,col)

    if (row < 1 || row > (@rows-1) || col< 1 || col >@columns+1)
      puts "invalid coordinate of hit, It wont be recorded, remember that --> add_hit(row, column)"
    elsif @map[row][col] == "#"
      @hits +=1
      @map[row][col] = "H"
    else
      @missed +=1
      @map[row][col]="M"
    end

  end # end of add hit


  def check_win()

  end

  def random_nums()
    x = 1+ rand(@rows-1)
    y = 1+ rand(@columns-1)
    direction  = 1 + rand(4)
    [x,y,direction]
  end

  def check_valid(array)
    x = array[0]
    y= array[1]
    z= array[2]


    5.times do |index|
      if z==1
        if(x-index < 1 || x-index > @rows-1|| y<1 || y >@columns-1)
          return false
          end
          if (@map[x-index][y] == "#" || @map[x-index][y] == NilClass)
            return false
          end
      elsif z==2
        if(x < 1 || x > @rows-1|| y+index<1 || y+index >@columns-1)
          return false
          end
          if (@map[x][y+index] == "#"  || x < 1 || x > @rows-1|| y+index<1 || y+index >@columns-1|| @map[x][y+index] == NilClass)
            return false
          end

      elsif z==3
        if(x+index < 1 || x+index> @rows-1|| y<1 || y >@columns-1 )
          return false
        end

        if (@map[x+index][y] == "#"  || x+index < 1 || x+index> @rows-1|| y<1 || y >@columns-1 || @map[x+index][y] == NilClass)
          return false
        end

      else
        if( x < 1 || x > @rows-1|| y-index<1 || y-index >@columns-1 )
          return false
          end
          if (@map[x][y-index] == "#"  || x < 1 || x > @rows-1|| y-index<1 || y-index >@columns-1 || @map[x][y-index] == NilClass)
            return false
          end

      end
      # puts "index is: " + index.to_s
    end

    return true

  end # end of check_valid



  def create_random_ships()
    count=0
    valid = false
    @SHIPS_NUMBER.times do |index|
      while valid != true
        x = random_nums()
        puts "random vals: " +x*" "
        valid = check_valid(x)
        count +=1
      end
      puts  "count for finding a valid random number: " + count.to_s
      puts x.class
      puts "-------------"

       add_ship(x[0], x[1], x[2])

      valid = false
      count=0
    end

  end# end of create_random_ships


end # end of class map


#puts x.columns
#178.chr("UTF-8")
