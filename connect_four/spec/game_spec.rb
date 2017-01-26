require 'game'

describe Game do
  let(:game) { Game.new }
  WHITE_DISC = "\u26AA"
  BLACK_DISC = "\u26AB"

  it "initializes with empty board" do
    expect {game.board.show}.to output("#{BLANK * 7}\n" * 6).to_stdout
  end

  describe "#add_disc" do
    it "adds disc to empty column" do
      game.add_disc(0, WHITE_DISC)
      expect(game.board.grid[5][0]).to eql(WHITE_DISC)
    end
    it "it adds disc to non-empty column" do
      game.add_disc(0, WHITE_DISC)
      game.add_disc(0, BLACK_DISC)
      game.add_disc(1, WHITE_DISC)
      expect(game.board.grid[5][0]).to eql(WHITE_DISC)
      expect(game.board.grid[4][0]).to eql(BLACK_DISC)
      expect(game.board.grid[5][1]).to eql(WHITE_DISC)
    end
    it "returns nil if adding to full column" do
      6.times do
        game.add_disc(0, WHITE_DISC)
      end
      expect(game.add_disc(0, WHITE_DISC)).to eql(nil)
    end
  end
end
