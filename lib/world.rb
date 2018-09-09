class World
  attr_accessor :rows, :cols, :world_grid

  def initialize(rows = 6, cols = 6)
    @rows = rows
    @cols = cols
    @world_grid = Array.new(rows) do |row|
      Array.new(cols) do |col|
        Cell.new(col, row)
      end
    end
  end

  def barren?
  end

  def populate(x_coord, y_coord)
  end

end
