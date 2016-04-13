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
    Rectangle.new(@minimumX, @maximumY, @maximumX - @minimumX, @maximumY - @minimumY)
  end

  def center
    sumX = 0
    sumY = 0
    @minimumX = @points[0].x
    @minimumY = @points[0].y
    @maximumX = @points[0].x
    @maximumY = @points[0].y
    
    @points.each do |i|
      sumX+= i.x
      sumY+= i.y

      if i.x < @minimumX
        @minimumX = i.x
      end
      if i.y < @minimumY
        @minimumY = i.y
      end

      if i.x > @maximumX
        @maximumX = i.x
      end
      if i.y > @maximumY
        @maximumY = i.y
      end
    end  

    Point.new(sumX/@points.count, sumY/@points.count)
  end

  def area
    1
  end


end

polygon = Polygon.new([Point.new(6, 0), Point.new(2, 2), Point.new(1, 5), Point.new(7, 1)])
pp polygon
puts polygon.center
puts polygon.bound
puts polygon.area