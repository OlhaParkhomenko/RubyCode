require "./025_shape.rb"
require "./026_rectangle.rb"

class Circle < Shape
attr_accessor :r

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
    minRectangle=Rectangle.new(@position, @r, @r)
  end

end

circle1 = Circle.new
puts "Square = #{circle1.area}"
puts "Center = #{circle1.center}"
puts "Min rectangle - #{circle1.bound} square with side - #{2*circle1.r} "

circle2 = Circle.new(20, 20, 5)
puts "Square = #{circle2.area}"
puts "Center = #{circle2.center}"
puts "Min rectangle - #{circle2.bound} square with side - #{2*circle2.r} "