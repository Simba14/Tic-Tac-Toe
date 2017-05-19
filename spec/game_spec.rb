require 'game'
describe Game do
  subject(:game) { described_class.new(board: board) }
  let(:board) { double :board }

  it 'is initialized with a boards object' do
    expect(game.board).to eq board
  end

  describe '#play' do
    it 'sets the board up read for game' do
      allow(board).to receive(:set)
      expect(board).to receive(:set)
      game.play
    end
  end

end
