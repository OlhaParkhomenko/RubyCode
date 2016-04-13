require "./025_shape.rb"
require "./024_task.rb"
require "./026_rectangle.rb"
require "pp"

class Polygon < Shape

  attr_accessor :points

  def initialize(points)    
    @position = points[0] unless points.empty?
    @points = points
  end

  def bound
    Rectangle.new(minimumX, maximumY, maximumX - minimumX, maximumY - minimumY)
  end

  def center
    Point.new((maximumX - minimumX)/2 + minimumX, (maximumY - minimumY)/2 + minimumY)
  end


end

polygon = Polygon.new([Point.new(5, 0), Point.new(2, 2), Point.new(3, 3), Point.new(8, 1)])
pp polygon

arrX=[]
arrY=[]
polygon.points.each {|i| arrX.push(i.x)
  arrY.push(i.y)
}
maximumX = arrX.max
maximumY = arrY.max

minimumX = arrX.min
minimumY = arrY.min

puts "maximumX = #{maximumX}" 
puts "maximumY = #{maximumY}" 
puts "minimumX = #{minimumX}"
puts "minimumY = #{minimumY}"