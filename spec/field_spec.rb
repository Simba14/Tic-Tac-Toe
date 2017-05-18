require 'field'

describe Field do
  subject(:field) { described_class.new }

  it 'initializes with value of zero' do
    expect(field.value).to be_zero
  end
end
