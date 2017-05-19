require 'board'
describe Board do
  subject(:board) { described_class.new(field: field) }
  let(:field) { double :field }
  it 'instantied with an empty grid' do
    expect(board.grid).to eq [['', '', ''], ['', '', ''], ['', '', '']]
  end

  describe '#set' do
    it 'updates grid to contain field objects' do
      expect(board.set).to eq [[field, field, field], [field, field, field], [field, field, field]]
    end
  end
end
