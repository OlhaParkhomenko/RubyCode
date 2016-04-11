require "./024_task.rb"

class Shape < Point

  @position = [:x, :y]
    
  def area
    raise "not implemented"
  end
  def center
    raise "not implemented"
  end
end

shape = Shape.new
p shape
shape.area