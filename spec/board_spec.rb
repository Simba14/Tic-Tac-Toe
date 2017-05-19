require 'board'
describe Board do
  subject(:board) { described_class.new(field: field) }
  let(:field) { double :field, fill: 0 }
  let(:row) { 0 }
  let(:column) { 1 }
  let(:symbol) { "X" }

  it 'instantied with an empty grid' do
    expect(board.grid).to eq [['', '', ''], ['', '', ''], ['', '', '']]
  end

  describe '#set' do
    it 'updates grid to contain field objects' do
      expect(board.set).to eq [[field, field, field], [field, field, field], [field, field, field]]
    end
  end

  describe '#update' do
    before { board.set }
    it 'updates field based on player move' do
      board.update(row: row, column: column, symbol: symbol)
      expect(board.grid[row][column]).to receive(fill).with(symbol)
    end
  end
end
