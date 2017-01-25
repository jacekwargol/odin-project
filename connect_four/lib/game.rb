require 'board'

class Game
  attr_reader :board
  WHITE_DISC = "\u26AA"
  BLACK_DISC = "\u26AB"

  def initialize
    @board = Board.new
  end

  def add_disc(col)
    @board.grid.each_with_index do |row, i|
      if @board.grid[i][col]
        @board.grid[i-1][col] = WHITE_DISC
        break
      end
      @board.grid[i][col] = WHITE_DISC if i == 5
    end
  end
end
