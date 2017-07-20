require_relative '../game/ship'

describe Ship do

  it "ship has length property" do
     ship = Ship.new(5)

     expect(ship.length).to eq(5)
  end

  it "other variables initialized" do
     ship = Ship.new(5)

     expect(ship.length).to eq(5)
     expect(ship.sunk).to eq(false)
     expect(ship.rowStart).to eq(0)
     expect(ship.colStart).to eq(0)
     expect(ship.rowEnd).to eq(0)
     expect(ship.colEnd).to eq(0)
     expect(ship.orientation).to eq(0)
  end

  it "column and row ends are set based on direction, length and start" do
     ship = Ship.new(5)

     ship.init 0, 1, 1
     expect(ship.rowStart).to eq(1)
     expect(ship.colStart).to eq(1)
     expect(ship.orientation).to eq(0)
     expect(ship.rowEnd).to eq(1)
     expect(ship.colEnd).to eq(6)

     ship.init 1, 1, 1
     expect(ship.rowStart).to eq(1)
     expect(ship.colStart).to eq(1)
     expect(ship.orientation).to eq(1)
     expect(ship.rowEnd).to eq(6)
     expect(ship.colEnd).to eq(1)
  end

  it "ship length decreases" do
    ship = Ship.new(5)
    ship.shrink_ship
    expect(ship.length).to eq(4)
  end

  it "ship was hit" do
    ship = Ship.new(5)
    ship.init 0, 0, 0
    expect(ship.hit_me? 0, 3).to eq(true)
  end

  it "ship was not hit" do
    ship = Ship.new(5)
    ship.init 0, 0, 0
    expect(ship.hit_me? 1, 1).to eq(false)
  end

  it "ship has sunk" do
    ship = Ship.new(1)
    ship.shrink_ship
    expect(ship.sunk?).to eq(true)
    expect(ship.sunk).to eq(true)
  end

end
