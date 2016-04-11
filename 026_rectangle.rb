require "./025_shape.rb"

class Rectangle < Shape
  attr_accessor :x, :y, :w, :h

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

  def bound
    self
  end

end

rectangle1 = Rectangle.new
p rectangle1
puts "Square = #{rectangle1.area}"
puts "Center = #{rectangle1.center}"
puts "Bound result: #{rectangle1.bound} width - #{rectangle1.w}, height - #{rectangle1.h}"

rectangle2 = Rectangle.new(8, 12, 8, 4)
p rectangle2
puts "Square = #{rectangle2.area}"
puts "Center = #{rectangle2.center}"
puts "Bound result: #{rectangle2.bound} width - #{rectangle2.w}, height - #{rectangle2.h}"