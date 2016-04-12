require "./025_shape.rb"
require "./024_task.rb"

class Polygon < Shape

  def initialize (number=3)    
    @number = number
    array = Array.new (@number)
    array[0] = super(x, y)
  end

end

polygon = Polygon.new
p polygon