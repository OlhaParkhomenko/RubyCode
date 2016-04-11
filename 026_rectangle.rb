require "./025_shape.rb"

class Rectangle < Shape

  def initialize(x=0, y=0, w=4, h=2)
    @x = x
    @y = y
    @w = w
    @h = h      
  end  

  def area
    @w * @h
  end

  def center
    @point = [@x + @w/2, @y + @h/2]
  end

end

rectangle1 = Rectangle.new
puts "Square = #{rectangle1.area}"
puts "Center = #{rectangle1.center}"