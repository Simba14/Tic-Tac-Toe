# Stores the value of a tic-tac-toe field
class Field
  EMPTY = 0
  attr_reader :value
  def initialize(value: EMPTY)
    @value = value
  end

  def fill(symbol)
    @value = symbol
  end
end
