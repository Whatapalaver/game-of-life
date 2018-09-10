require 'game'

describe Game do

  subject(:test_game) { described_class.new }
  let(:seeded_game) { described_class.new(Grid.new, [1, 2, 6]) }

  context 'New game' do
    it 'is a Game object' do
      expect(test_game.is_a?(Game)).to eq true
    end

    it 'responds to expected methods' do
      expect(test_game).to respond_to(:grid)
      expect(test_game).to respond_to(:seeds)
    end

    it 'is barren before seeding' do
      expect(test_game.grid.barren?).to eq true
    end

  end

  context 'A seeded game' do
    it 'is not barren' do
      expect(seeded_game.grid.barren?).not_to eq true
    end
  end

end
