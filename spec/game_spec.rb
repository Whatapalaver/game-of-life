require 'game'

describe Game do

  subject(:test_game) { described_class.new }
  let(:seeded_game) { described_class.new(Grid.new, [1, 2, 6]) }

  context 'New game' do
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
