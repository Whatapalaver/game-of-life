require 'grid'

describe Grid do

  subject(:test_grid) { described_class.new }

  context 'New grid' do
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
  
  context 'can determine a cells neighbours' do
    it 'for non-edge cells' do
      expected_neighbours_of_8 = [1, 2, 3, 7, 9, 13, 14, 15]
      expected_neighbours_of_21 = [14, 15, 16, 20, 22, 26, 27, 28]
      expect(test_grid.neighbours(8)).to eq expected_neighbours_of_8
      expect(test_grid.neighbours(21)).to eq expected_neighbours_of_21
    end
    it 'for central first row cells' do
      expected_neighbours_of_2 = [31, 32, 33, 1, 3, 7, 8, 9]
      expect(test_grid.neighbours(2)).to eq expected_neighbours_of_2
    end
    it 'for central last row cells' do
      expected_neighbours_of_32 = [25, 26, 27, 31, 33, 1, 2, 3]
      expect(test_grid.neighbours(32)).to eq expected_neighbours_of_32
    end
    it 'for first columns cells' do
      expected_neighbours_of_12 = [11, 6, 7, 17, 13, 23, 18, 19]
      expect(test_grid.neighbours(12)).to eq expected_neighbours_of_12
    end
    it 'for last columns cells' do
      expected_neighbours_of_23 = [16, 17, 12, 22, 18, 28, 29, 24]
      expect(test_grid.neighbours(23)).to eq expected_neighbours_of_23
    end
    it 'for corner cells' do
      expected_neighbours_of_0 = [35, 30, 31, 5, 1, 11, 6, 7]
      expected_neighbours_of_30 = [29, 24, 25, 35, 31, 5, 0, 1]
      expected_neighbours_of_35 = [28, 29, 24, 34, 30, 4, 5, 0]
      expected_neighbours_of_5 = [34, 35, 30, 4, 0, 10, 11, 6]
      expect(test_grid.neighbours(0)).to eq expected_neighbours_of_0
      expect(test_grid.neighbours(30)).to eq expected_neighbours_of_30
      expect(test_grid.neighbours(35)).to eq expected_neighbours_of_35
      expect(test_grid.neighbours(5)).to eq expected_neighbours_of_5
    end
  end

end
