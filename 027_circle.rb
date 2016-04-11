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

end

circle1 = Circle.new
puts "Square = #{circle1.area}"
puts "Center = #{circle1.center} x= #{circle1.position.x} y= #{circle1.position.y}"
puts "Min rectangle - #{circle1.bound} - 
  left point = #{circle1.position.x-circle1.r}, #{circle1.position.y+circle1.r}, 
  width = #{2*circle1.r}, height = #{2*circle1.r} "

circle2 = Circle.new(20, 20, 5)
puts "Square = #{circle2.area}"
puts "Center = #{circle2.center}"
puts "Min rectangle - #{circle2.bound} square with side - #{2*circle2.r} "