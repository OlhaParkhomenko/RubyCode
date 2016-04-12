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

  def bound
    raise "not defined"
  end

  def to_s
    "Shape: x=#{@position.x}, y=#{@position.y}"
  end
  
end

if __FILE__==$0 
  shape1 = Shape.new
  puts shape1

  shape2 = Shape.new(10, 20)
  puts shape2
end