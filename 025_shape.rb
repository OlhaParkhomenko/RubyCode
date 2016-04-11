require "./024_task.rb"

class Shape
  attr_accessor :position

  def initialize(x=0, y=0)
    @position = Point.new(x, y)
  end 

  def area
    raise "not implemented"
  end
  def center
    raise "not implemented"
  end
end

shape1 = Shape.new
p shape1
shape2 = Shape.new(10, 20)
p shape2