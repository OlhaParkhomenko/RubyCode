require "./025_shape.rb"
require "./026_rectangle.rb"

class Circle < Shape
attr_accessor :x, :y, :r

  def initialize (x=10, y=10, r=1)
    super(x, y)
    @r = r
  end

  def area
    Math::PI*(@r**2)
  end

  def center
    @position
  end

  def bound
    Rectangle.new(@position.x-@r, @position.y-@r, 2*@r, 2*@r)
  end

  def to_s
    puts "Square= #{area}"
    puts "Center: x= #{center.x}, y= #{center.y}"
    puts "Rectangle: #{bound}"
    puts "x= #{@position.x-@r}"
    puts "y= #{@position.y-@r}"
    puts "width=height #{2*@r}"
  end

end

circle1 = Circle.new
puts circle1

circle2 = Circle.new(20, 20, 5)
puts circle2
