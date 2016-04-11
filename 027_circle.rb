require "./025_shape.rb"

PI = 3.14

class Circle < Shape

  def initialize (x=10, y=10, r=1)
    super(x, y)
    @r = r
  end

  def area
    PI*(@r**2)
  end

  def center
    @point = [@position.x, @position.y]
  end

  def bound
    2*@r
  end

end

circle1 = Circle.new
puts "Square = #{circle1.area}"
puts "Center = #{circle1.center}"
puts "Min rectangle - square with side - #{circle1.bound}"

circle2 = Circle.new(20, 20, 5)
puts "Square = #{circle2.area}"
puts "Center = #{circle2.center}"
puts "Min rectangle - square with side - #{circle2.bound}"