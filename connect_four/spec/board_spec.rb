require 'board'

BLANK = "\u2610"

describe Board do
  let(:board) { Board.new }

  it "initialize 6x7 grid" do
    expect(board.grid.size).to eql(6)
    expect(board.grid[0].size).to eql(7)
  end

  describe '#show' do
    it "prints empty board" do
      expect {board.show}.to output("#{BLANK * 7}\n" * 6).to_stdout
    end

    it "prints non-empty board" do
      board.grid[0][0] = 'X'
      expect {board.show}.to output("X#{BLANK * 6}\n"+"#{BLANK * 7}\n" * 5).to_stdout
    end
  end
end
