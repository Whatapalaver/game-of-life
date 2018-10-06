require 'cell'

describe Cell do

  subject(:cell) { described_class.new(0) }

  context 'New cell' do
    it 'is not alive on initiation' do
      expect(cell.alive?).to eq false
    end
  end

end
