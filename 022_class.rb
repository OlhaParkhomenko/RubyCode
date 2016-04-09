class Animal
  def move
    puts "I'm moving"
  end
end

class Bird < Animal
  def fly
    puts "I'm flying"
  end
end

bird=Bird.new
bird.fly
bird.move