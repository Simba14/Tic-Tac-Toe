# stores 3x3 grid containing field values
class Board
  attr_reader :grid
  def initialize
    @grid = [['', '', ''], ['', '', ''], ['', '', '']]
  end
end
