class Cell
  attr_accessor :alive, :index

  def initialize()
    @alive = false
    @index = index
  end

  def alive?
    alive
  end

  def dead?
    !alive
  end

end
