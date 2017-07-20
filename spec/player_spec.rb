require_relative '../game/player'

describe Player do

  # each `it` tests a specific functionality of our objects
  it "has a name" do
    # often we start a test by setting up a specific state
    james = Player.new("James")

    # expect runs the code we pass in, and compares the result to the eq() part
    expect(james.name).to eq("James")
  end


end
