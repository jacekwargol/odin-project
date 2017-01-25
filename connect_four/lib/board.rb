class Board
  attr_accessor :grid
  BLANK = "\u2610"

  def initialize
    @grid = Array.new(6) { Array.new(7) }
  end

  def show

    @grid.each do |col|
      col.each { |el| print (!el ? "#{BLANK}" : el) }
      print "\n"
    end
  end

end
