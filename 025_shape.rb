require "./024_task.rb"

class Shape
attr_accessor :position

 @position = Point.new

  def area
    raise "not implemented"
  end
  def center
    raise "not implemented"
  end
end

shape = Shape.new
p shape