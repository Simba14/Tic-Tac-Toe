require_relative 'field'
# stores 3x3 grid containing field values
class Board
  attr_reader :grid, :field
  def initialize(field: Field.new)
    @grid = [['', '', ''], ['', '', ''], ['', '', '']]
    @field = field
  end

  def set
    @grid.each do |row|
      row.map! { field }
    end
  end

  def update(row:, column:, symbol:)
    @grid[row][column].fill(symbol)
  end
end
