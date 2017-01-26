require_relative 'board'

class Game
  attr_reader :board
  WHITE_DISC = "\u26AA"
  BLACK_DISC = "\u26AB"

  def initialize
    @board = Board.new
  end

  def add_disc(col, color)
    return nil if @board.grid[0][col]
    @board.grid.each_with_index do |row, i|
      if @board.grid[i][col]
        @board.grid[i-1][col] = color
        break
      end
      @board.grid[i][col] = color if i == 5
    end
  end
end
