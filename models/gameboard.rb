class GameBoard
  attr_reader :game_array, :ship_points, :hits, :misses

  def initialize
    @game_array = []
    @ship_points = nil
    @hits = [12, 14, 27, 87, 20]
    @misses = [75, 24, 93, 34]
  end

  def create_array
    100.times do
      @game_array.push('?')
    end
  end

  def update_array
    @hits.each{ |x| game_array[x] = 'X'}
    @misses.each{ |x| game_array[x] = 'O'}
  end

end
