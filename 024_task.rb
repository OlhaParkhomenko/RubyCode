class Point
  attr_accessor :x, :y

  def initialize(x=0, y=0)
    @x = x
    @y = y
  end

  def to_s
    "Point: x = #{@x}, y = #{@y}"
  end

end

if __FILE__==$0 
  p1 = Point.new
  puts p1
  p2 = Point.new(10, 20)
  puts p2
  p1.x = 1
  puts p1
  puts p2.y
end