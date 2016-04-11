require "./025_shape.rb"

class Rectangle < Shape

  def initialize(x=0, y=0, w=4, h=2)
    super(x, y)
    @w = w
    @h = h      
  end  

  def area
    @w * @h
  end

  def center
    @point = [@position.x + @w/2, @position.y + @h/2]
  end

end

rectangle1 = Rectangle.new
puts "Square = #{rectangle1.area}"
puts "Center = #{rectangle1.center}"
rectangle2 = Rectangle.new(8, 12, 4, 2)
puts "Square = #{rectangle2.area}"
puts "Center = #{rectangle2.center}"