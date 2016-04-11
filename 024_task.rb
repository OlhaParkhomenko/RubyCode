class Point
  attr_accessor :x, :y

  def initialize(x=0, y=0)
    @x = x
    @y = y
  end
end

if __FILE__==$0 
  p1 = Point.new
  p p1
  p2 = Point.new(10, 20)
  p p2
  p1.x = 1
  p p1
  p p2.y
end