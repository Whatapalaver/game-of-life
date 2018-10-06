require './lib/cell.rb'

class Grid
  attr_accessor :size, :grid_array

  def initialize(size = 6)
    @size = size
    @grid_array = Array.new(size.pow(2)) do |index|
      Cell.new(index)
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

  def neighbours(index)
    neighbour_indices = []
    neighbour_indices << index - above(index) + left(index)
    neighbour_indices << index - above(index)
    neighbour_indices << index - above(index) + right(index)
    neighbour_indices << index + left(index)
    neighbour_indices << index + right(index)
    neighbour_indices << index + below(index) + left(index)
    neighbour_indices << index + below(index)
    neighbour_indices << index + below(index) + right(index)
    neighbour_indices
  end

  private

  def first_row?(index)
    index < size
  end

  def last_row?(index)
    index >= total_cells - size
  end

  def total_cells
    size.pow(2)
  end

  def above(index)
    if first_row?(index)
      - (size * (size - 1))
    else
      size
    end
  end

  def below(index)
    if last_row?(index)
      - (size * (size - 1))
    else
      size
    end
  end

  def left(index)
    if index % size == 0
      size - 1
    else
      - 1
    end
  end

  def right(index)
    if (index + 1) % size == 0
      - (size - 1)
    else
      + 1
    end
  end

end
