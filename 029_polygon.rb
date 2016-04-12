require "./025_shape.rb"
require "./024_task.rb"

class Polygon < Shape

  def initialize(number = 3)    
    @number = number
    @array = Array.new(@number)
    super(x, y)
  end

 @array.each {|i| push @position}

end

polygon = Polygon.new
p polygon