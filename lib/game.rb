require_relative 'board'
# Creates a new game of tic-tac-toe
class Game
  attr_reader :board
  def initialize(board: Board.new)
    @board = board
  end

  def play
    board.set
  end
end
