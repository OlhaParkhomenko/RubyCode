class Person

  def initialize
  end

  def name
    @name
  end

  def lastname
    @lastname
  end

  def age
    @age
  end

  def name=(name_value)
    @name=name_value
  end

  def lastname=(lastname_value)
    @lastname=lastname_value
  end

  def age=(age_value)
    @age=age_value
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