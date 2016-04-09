class Person

  def initialize(name, lastname, age)
    @name=name
    @lastname=lastname
    @age=age
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

  def to_s
    "#{@name} #{@lastname} #{@age} years old"
  end
    
end

person=Person.new('Vasya', 'Pupkin', '13')

puts person
puts person.name
puts person.lastname
puts person.age