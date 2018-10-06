require './lib/grid.rb'

class Game
  attr_accessor :grid, :seeds

  def initialize(grid = Grid.new, seeds = [])
    @grid = grid
    @seeds = seeds

    seeds.each do |seed|
      populate(seed)
    end

  end

  private

  def populate(cell)
    grid.grid_array[cell].alive = true
  end
end
