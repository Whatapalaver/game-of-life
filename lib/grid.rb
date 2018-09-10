class Grid
  attr_accessor :size, :grid_array

  def initialize(size = 6)
    @size = size
    @grid_array = Array.new(size ** 2) do |index|
      Cell.new
    end
  end

  def barren?
    alive_count(grid_array).zero?
  end

  def alive_count(array)
    alive_count = 0
    array.each do |cell|
      alive_count += 1 if cell.alive?
    end
    alive_count
  end

end
