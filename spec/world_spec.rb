require 'world'

describe World do

  subject(:test_world) { described_class.new }

  context 'New world' do
    it 'is a World object' do
      expect(test_world.is_a?(World)).to eq true
    end

    it 'responds to expected methods' do
      expect(test_world).to respond_to(:rows)
      expect(test_world).to respond_to(:cols)
      expect(test_world).to respond_to(:world_grid)
    end

    xit 'starts with a lifeless grid' do
      expect(test_world.barren?).to eq true
    end
  end

  context 'Populated world' do
    xit 'is not barren' do
      test_world.populate(1, 2)
      expect(test_world.barren?).not_to eq true
    end
  end

end
