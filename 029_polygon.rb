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
    minimumX = @points[0].x
    minimumY = @points[0].y
    maximumX = @points[0].x
    maximumY = @points[0].y

    @points.each do |i|
      minimumX = i.x if i.x < minimumX
      minimumY = i.y if i.y < minimumY
      maximumX = i.x if i.x > maximumX
      maximumY = i.y if i.y > maximumY
    end

    Rectangle.new(minimumX, maximumY, maximumX - minimumX, maximumY - minimumY)
  end

  def center
    sumX = 0
    sumY = 0
   
    @points.each do |i|
      sumX+= i.x
      sumY+= i.y
    end  

    Point.new(sumX/@points.count, sumY/@points.count)
  end

  def area
    
    square =0
    0.upto(@points.length - 1){|i|
      a = @points[i-1]
      b = @points[i]
     square += (a.y + b.y)*(b.x-a.x)
    } 

    (square / 2).abs

  end

end

polygon = Polygon.new([Point.new(6.0, 0.0), Point.new(2.0, 2.0), Point.new(1.0, 5.0), 
  Point.new(4.0, 4.0), Point.new(5.0, 6.0)])

pp polygon
puts polygon.center
puts polygon.bound
puts polygon.area