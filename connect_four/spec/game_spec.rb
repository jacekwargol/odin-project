require 'game'

describe Game do
  let(:game) { Game.new }
  WHITE_DISC = "\u26AA"
  BLACK_DISC = "\u26AB"

  it "initializes with empty board" do
    expect {game.board.show}.to output("#{BLANK * 7}\n" * 6).to_stdout
  end

  describe "#add_disc" do
    it "given column it changes first blank field" do
      game.add_disc(0)
      game.add_disc(0)
      game.add_disc(1)
      game.board.show
      expect(game.board.grid[5][0]).to eql(WHITE_DISC)
      expect(game.board.grid[4][0]).to eql(WHITE_DISC)
      expect(game.board.grid[5][1]).to eql(WHITE_DISC)
      expect(game.board.grid[4][1]).to eql(nil)
    end
  end
end
