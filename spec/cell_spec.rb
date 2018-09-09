require 'cell'

describe Cell do

  subject(:cell) { described_class.new }

  context 'New cell' do
    it 'is a Cell object' do
      expect(cell.is_a?(Cell)).to eq true
    end
    it 'responds to expected methods' do
      expect(cell).to respond_to(:alive)
      expect(cell).to respond_to(:x_coord)
      expect(cell).to respond_to(:y_coord)
    end
    it 'is not alive on initiation' do
      expect(cell.alive?).to eq false
    end
  end

end
