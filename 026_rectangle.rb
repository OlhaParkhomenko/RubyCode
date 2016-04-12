require "./025_shape.rb"

class Rectangle < Shape
  attr_accessor :w, :h

  def initialize(x=0, y=0, w=0, h=0)
    super(x, y)
    @w = w
    @h = h      
  end  

  def area
    @w * @h
  end

  def center
    [@position.x + @w/2, @position.y + @h/2]
  end

  def bound
    self
  end

  def to_s
    "Rectangle: x= #{@position.x}, y=#{@position.y}, w= #{@w}, h= #{@h}"
  end

end

if __FILE__==$0
  rectangle1 = Rectangle.new
  p rectangle1
  puts "Square = #{rectangle1.area}"
  puts "Center = #{rectangle1.center}"
  puts rectangle1.bound

  rectangle2 = Rectangle.new(8, 12, 8, 4)
  p rectangle2
  puts "Square = #{rectangle2.area}"
  puts "Center = #{rectangle2.center}"
  puts rectangle2.bound
end