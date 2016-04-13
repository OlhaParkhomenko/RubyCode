require "./025_shape.rb"
require "./024_task.rb"

class Polygon < Shape

  attr_accessor :array

  def initialize(number = 3)    
    @number = number
    array = Array.new(@number)
    array[0] = @position
  end

end

polygon = Polygon.new
p polygon