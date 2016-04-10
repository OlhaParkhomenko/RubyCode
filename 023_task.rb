class Runner
  def speed
    @speed = 8.0
  end
end

class Sprinter < Runner
  def speed
    @speed = super*2
  end
end

class Jogger < Runner
  def speed
    @speed = super*0.75
  end
end 

runner=Runner.new
puts runner.speed
sprinter=Sprinter.new
puts sprinter.speed
jogger=Jogger.new
puts jogger.speed
