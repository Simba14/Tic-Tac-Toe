# stores 3x3 grid containing field values
class Board
  attr_reader :grid, :field
  def initialize(field: Field.new)
    @grid = [['', '', ''], ['', '', ''], ['', '', '']]
    @field = field
  end

  def set
    @grid.each do |row|
      row.map!{ field }
    end
  end
end
