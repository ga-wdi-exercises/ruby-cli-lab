require_relative '../game/board'

describe Board do

  it "has a height and length" do
    # often we start a test by setting up a specific state
    board = Board.new(5,4)

    # expect runs the code we pass in, and compares the result to the eq() part
    expect(board.length).to eq(5)
    expect(board.height).to eq(4)
  end

  it "has a matrix of size length x height" do
    board = Board.new(5,4)

    expect(board.matrix.length).to eq(5)
    expect(board.matrix[0].length).to eq(4)
  end

  it "matrix starts as 2d array of dashes" do
    board = Board.new(2, 2)

    expected = [["-", "-"], ["-", "-"]]
    expect(board.matrix).to eq(expected)
  end

  it "matrix adds a ship vertically" do
    board = Board.new(5, 5)

    board.add_ship(0, 0, 5, 1)

    expected = [
      ["S", "-", "-", "-", "-"],
      ["S", "-", "-", "-", "-"],
      ["S", "-", "-", "-", "-"],
      ["S", "-", "-", "-", "-"],
      ["S", "-", "-", "-", "-"]
    ]
    expect(board.matrix).to eq(expected)
  end

  it "matrix adds a ship horizontally" do
    board = Board.new(5, 5)

    board.add_ship(0, 0, 5, 0)

    expected = [
      ["S", "S", "S", "S", "S"],
      ["-", "-", "-", "-", "-"],
      ["-", "-", "-", "-", "-"],
      ["-", "-", "-", "-", "-"],
      ["-", "-", "-", "-", "-"]
    ]
    expect(board.matrix).to eq(expected)
  end


  it "is a valid move" do
    board = Board.new(5,4)

    expect(board.valid_placement?(0, 0, 5, 0)).to eq(true)
    expect(board.valid_placement?(0, 0, 4, 1)).to eq(true)
  end

  it "is an invalid move" do
    board = Board.new(5,4)

    expect(board.valid_placement?(1, 1, 5, 0)).to eq(false)
    expect(board.valid_placement?(1, 1, 4, 1)).to eq(false)
    expect(board.valid_placement?(1, 1, 5, 2)).to eq(false)
  end

  it "matrix value get/set works" do
    board = Board.new(2, 2)
    board.set_position 0, 0, "+"

    actual = board.get_position 0, 0
    expect(actual).to eq("+")

    expectedArray = [["+", "-"], ["-", "-"]]

    expect(board.matrix).to eq(expectedArray)

  end

  it "game renders correct string" do
    board = Board.new(2,2)

    board.set_position 0, 0, "S"
    board.set_position 0, 1, "X"
    board.set_position 1, 0, "O"


    actual = board.to_s
    expected = "S X \nO -"

    expect(actual).to eq(expected)

  end

  it "get position test" do
    #board = Board.new(5,4)

  end

end
