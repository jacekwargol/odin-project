require 'board'

describe Board do
  let(:board) { Board.new }

  it "initialize 6x7 grid" do
    expect(board.grid.size).to eql(6)
    expect(board.grid[0].size).to eql(7)
  end
end
