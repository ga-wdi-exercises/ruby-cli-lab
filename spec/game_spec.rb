require_relative '../game/game'

describe Game do

  it "get random starting position" do
    # often we start a test by setting up a specific state
    board = Board.new(5,4)

    # expect runs the code we pass in, and compares the result to the eq() part
    expect(board.length).to eq(5)
    expect(board.height).to eq(4)
  end

end
