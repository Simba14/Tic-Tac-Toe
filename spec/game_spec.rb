require 'game'
describe Game do
  subject(:game) { described_class.new(board: board) }
  let(:board) { double :board }

  it 'is initialized with a boards object' do
    expect(game.board).to eq board
  end

end
