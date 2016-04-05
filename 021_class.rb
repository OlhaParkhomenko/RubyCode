class Person

  attr_accessor :name, :lastname, :age
  
  def initialize
  end

  def to_s
    "#{@name} #{@lastname} #{@age} years old"
  end
    
end

person=Person.new
person.name = "John"
person.lastname = "Snow"
person.age = 30

puts person
puts person.name
puts person.lastname
puts person.age