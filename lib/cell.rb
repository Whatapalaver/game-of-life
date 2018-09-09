class Cell
  attr_accessor :alive, :x_coord, :y_coord

  def initialize(x_coord = 0, y_coord = 0)
    @alive = false
    @x_coord = x_coord
    @y_coord = y_coord
  end

  def alive?
    @alive == true
  end

end
