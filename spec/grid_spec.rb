require 'grid'

describe Grid do

  subject(:test_grid) { described_class.new }

  context 'New grid' do
    it 'is a grid object' do
      expect(test_grid.is_a?(Grid)).to eq true
    end

    it 'responds to expected methods' do
      expect(test_grid).to respond_to(:size)
      expect(test_grid).to respond_to(:grid_array)
    end

    it 'starts with a lifeless grid' do
      expect(test_grid.barren?).to eq true
    end
  end

  context 'Populated grid' do
    it 'is not barren' do
      test_grid.grid_array[0].alive = true
      expect(test_grid.barren?).not_to eq true
    end
  end

end
