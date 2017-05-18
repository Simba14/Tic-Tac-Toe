require 'board'
describe Board do
  subject(:board) { described_class.new }
  it 'instantied with an empty grid' do
    expect(board.grid).to eq [['', '', ''], ['', '', ''], ['', '', '']]
  end
end
